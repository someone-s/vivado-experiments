/******************************************************************************
* Copyright (C) 2023 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <xil_exception.h>
#include <xscugic_hw.h>
#include <xstatus.h>
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xiic.h"
#include "xscugic.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */

#define INTC_TranslateIrqF2pToActual(logicalid) (((logicalid) < 8) ? (61 + (logicalid)) : (84 + (logicalid)))

#define INTC_AXI_GPIO_DEBUG_INT_ID	        (INTC_TranslateIrqF2pToActual(0))
#define INTC_AXI_IIC_ARDUINO_INT_ID	        (INTC_TranslateIrqF2pToActual(1))
#define INTC_AXI_SINGLE_SPI_ARDUINO_INT_ID	(INTC_TranslateIrqF2pToActual(2))
#define INTC_AXI_GPIO_ARDUINO_INT_ID	    (INTC_TranslateIrqF2pToActual(3))
#define INTC_AXI_GPIO_SWITCHBUTTON_INT_ID	(INTC_TranslateIrqF2pToActual(4))

#define AXI_GPIO_SWITCHBUTTON_SWITCH_IR_MASK    XGPIO_IR_CH1_MASK
#define AXI_GPIO_SWITCHBUTTON_BUTTON_IR_MASK    XGPIO_IR_CH2_MASK
#define AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK   (AXI_GPIO_SWITCHBUTTON_SWITCH_IR_MASK | AXI_GPIO_SWITCHBUTTON_BUTTON_IR_MASK)

#define AXI_GPIO_SWITCHBUTTON_SWITCH_CHANNEL    1
#define AXI_GPIO_SWITCHBUTTON_BUTTON_CHANNEL    2

#define AXI_GPIO_LED_RGB_CHANNEL    1
#define AXI_GPIO_LED_PLAIN_CHANNEL  2

/************************** Function Prototypes ******************************/
int InitGpioSwitchButton();
int InitGpioLed();

int InitInterruptController();
int SetupInterruptSystem();
int EnableGpioSwitchButtonInterrupt();
static void GpioSwitchButtonInterruptHandler(void *InstancePtr);
void GpioSwitchInterruptHandler();
void GpioButtonInterruptHandler();
/************************** Variable Definitions *****************************/
XScuGic Gic;
static XScuGic_Config *GicConfig;

XGpio GpioSwitchButton;
XGpio GpioLed;

/*****************************************************************************/
/**
*
* This is the main function for the Interrupt Controller example.
*
* @param	None.
*
* @return	XST_SUCCESS if all good.
*
* @note		None.
*
****************************************************************************/
int main()
{
    int Status;

    Status = InitGpioSwitchButton();
    if (Status != XST_SUCCESS) return XST_FAILURE;

    Status = InitGpioLed();
    if (Status != XST_SUCCESS) return XST_FAILURE;

    Status = InitInterruptController();
    if (Status != XST_SUCCESS) return XST_FAILURE;

    Status = EnableGpioSwitchButtonInterrupt();
    if (Status != XST_SUCCESS) return XST_FAILURE;

    return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function setups the interrupt
*
* @param	None.
*
* @return	XST_SUCCESS if no error.
*
* @note		None.
*
******************************************************************************/
int InitInterruptController()
{
    int status;

    GicConfig = XScuGic_LookupConfig(XPAR_INTC_BASEADDR);

    status = XScuGic_CfgInitialize(&Gic, GicConfig, GicConfig->CpuBaseAddress);
    if (status != XST_SUCCESS) return XST_FAILURE;

    status = XScuGic_SelfTest(&Gic);
    if (status != XST_SUCCESS) return XST_FAILURE;

    status = SetupInterruptSystem(&Gic);
    if (status != XST_SUCCESS) return XST_FAILURE;

    return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function setups the interrupt system on the arm side
*
* @param	None.
*
* @return	XST_SUCCESS if no error.
*
* @note		None.
*
******************************************************************************/
int SetupInterruptSystem(XScuGic *XScuGicInstancePtr)
{
    
    // Connect gic interrupt handler to ARM processor hardware
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, XScuGicInstancePtr);

    // Enable interrupt in ARM
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function connects and enable interrupt from axi_gpio_switchbutton
*
* @param	None.
*
* @return	XST_SUCCESS if no error.
*
* @note		None.
*
******************************************************************************/
int EnableGpioSwitchButtonInterrupt()
{
    int status;

    status = XScuGic_Connect(&Gic, INTC_AXI_GPIO_SWITCHBUTTON_INT_ID, (Xil_InterruptHandler)GpioSwitchButtonInterruptHandler, (void *)&GpioSwitchButton);
    if (status != XST_SUCCESS) return XST_FAILURE;

    XGpio_InterruptEnable(&GpioSwitchButton, AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK);
    XGpio_InterruptGlobalEnable(&GpioSwitchButton);

    XScuGic_Enable(&Gic, INTC_AXI_GPIO_SWITCHBUTTON_INT_ID);

    return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function is the interrupt handler for axi_gpio_switchbutton
*
* @param	InstancePtr as defined with Xil_InterruptHandler.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void GpioSwitchButtonInterruptHandler(void *InstancePtr __attribute__((unused)))
{
    XGpio_InterruptDisable(&GpioSwitchButton, AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK);

    // Ignore duplicate interrupts
    if ((XGpio_InterruptGetStatus(&GpioSwitchButton) & AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK) == 0)
        return;

    int switches = XGpio_DiscreteRead(&GpioSwitchButton, AXI_GPIO_SWITCHBUTTON_SWITCH_CHANNEL);
    
    int rgb_outputs = 0b100100;
    if (switches & 0b01) {
        rgb_outputs |= 0b000011;
    }
    if (switches & 0b10) {
        rgb_outputs |= 0b011000;
    }

    XGpio_DiscreteWrite(&GpioLed, AXI_GPIO_LED_RGB_CHANNEL, rgb_outputs);

    // Actual work
    int buttons = XGpio_DiscreteRead(&GpioSwitchButton, AXI_GPIO_SWITCHBUTTON_BUTTON_CHANNEL);
    
    int plain_outputs = 0b0000;
    if (buttons & 0b0001) {
        plain_outputs |= 0b0001;
    }
    if (buttons & 0b0010) {
        plain_outputs |= 0b0010;
    }
    if (buttons & 0b0100) {
        plain_outputs |= 0b0100;
    }
    if (buttons & 0b1000) {
        plain_outputs |= 0b1000;
    }

    XGpio_DiscreteWrite(&GpioLed, AXI_GPIO_LED_PLAIN_CHANNEL, plain_outputs);

    // Reset interrupt
    XGpio_InterruptClear(&GpioSwitchButton, AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK);
    XGpio_InterruptEnable(&GpioSwitchButton, AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK);
}

/*****************************************************************************/
/**
*
* This function setups the axi_gpio_switchbutton
*
* @param	None.
*
* @return	XST_SCCCESS if no error.
*
* @note		None.
*
******************************************************************************/
int InitGpioSwitchButton()
{
    int status;

    // Channel 1 is switches 0 and 1
    // Channel 2 is buttons 0 to 3
    status = XGpio_Initialize(&GpioSwitchButton, XPAR_AXI_GPIO_SWITCHBUTTON_BASEADDR);
    if (status != XST_SUCCESS) return XST_FAILURE;
    // bit set 1 for input (instead of 0 for output)
    XGpio_SetDataDirection(&GpioSwitchButton, AXI_GPIO_SWITCHBUTTON_SWITCH_CHANNEL, 0b11);
    XGpio_SetDataDirection(&GpioSwitchButton, AXI_GPIO_SWITCHBUTTON_BUTTON_CHANNEL, 0b1111);

    return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function setups the axi_gpio_led
*
* @param	None.
*
* @return	XST_SCCCESS if no error.
*
* @note		None.
*
******************************************************************************/
int InitGpioLed()
{
    int status;

    // Channel 1 is rgb led 0,1,2 and 3,4,5
    // Channel 2 is plain led 0 to 4
    status = XGpio_Initialize(&GpioLed, XPAR_AXI_GPIO_LED_BASEADDR);
    if (status != XST_SUCCESS) return XST_FAILURE;
    // bit set 0 for output (instead of 1 for oinput)
    XGpio_SetDataDirection(&GpioLed, AXI_GPIO_LED_RGB_CHANNEL, 0b000000);
    XGpio_SetDataDirection(&GpioLed, AXI_GPIO_LED_PLAIN_CHANNEL, 0b0000);

    return XST_SUCCESS;
}