/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * simpleled.c: simple test application
 */

#include <xiic.h>
#include <xstatus.h>
#include <xgpio.h>
#include <xiic.h>
#include <xil_printf.h>
#include "custom_interrupt.h"
#include "custom_uart.h"
#include "custom_gpioswitchbutton.h"
#include "custom_gpioled.h"
#include "custom_iic.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
 

/************************** Function Prototypes ******************************/
static void ReceiveHandler(XIic *InstancePtr);
static void SendHandler(XIic *InstancePtr);
static void StatusHandler(XIic *InstancePtr, int Event);

void UpdateGpioSwitchButton();

/************************** Variable Definitions *****************************/

XScuGic Gic;
XGpio GpioSwitchButton;
XGpio GpioLed;
XIic Iic;

volatile u8 RecievePending;

u8 WriteBuffer[1];	/* Write buffer for writing a page. */
u8 ReadBuffer[1];	/* Read buffer for reading a page. */

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
    int status;

    status = InitUart();
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("UART running\r\n");

    status = InitGpioSwitchButton(&GpioSwitchButton);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("GPIO IN running\r\n");

    status = InitGpioLed(&GpioLed);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("GPIO OUT running\r\n");

    status = InitIic(&Iic);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("IIC configured\r\n");

    status = BeginInitInterruptController(&Gic);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("GIC begin configured\r\n");

    status = EnableGpioSwitchButtonInterrupt(&Gic, &GpioSwitchButton, &UpdateGpioSwitchButton);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("GPIO interrupt configured\r\n");

    status = EnableIicInterrupt(&Gic, &Iic);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("IIC interrupt configured\r\n");

    status = EndInitInterruptController(&Gic);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("GIC end configured\r\n");

    XIic_SetSendHandler(&Iic, &Iic, (XIic_Handler)SendHandler);
    XIic_SetRecvHandler(&Iic, &Iic, (XIic_Handler)ReceiveHandler);
    XIic_SetStatusHandler(&Iic, &Iic, (XIic_StatusHandler)StatusHandler);

    status = XIic_SetAddress(&Iic, XII_ADDR_TO_SEND_TYPE, 0x68);
    print("IIC set address \r\n");

    RecievePending = 1;

	status = XIic_Start(&Iic);
	if (status != XST_SUCCESS) return XST_FAILURE;

    Iic.Options = XII_REPEATED_START_OPTION;
    WriteBuffer[0] = 117;
    status = XIic_MasterSend(&Iic, WriteBuffer, 1);
	if (status != XST_SUCCESS) return XST_FAILURE;
    xil_printf("Sent ok\r\n");

    while (RecievePending)
    {

    }

	int BusBusy;
    BusBusy = XIic_IsIicBusy(&Iic);

    RecievePending = 1;

    Iic.Options = 0x0;
    status = XIic_MasterRecv(&Iic, ReadBuffer, 1);
	if (status != XST_SUCCESS) return XST_FAILURE;
    xil_printf("Receive ok\r\n");

    while (RecievePending || (XIic_IsIicBusy(&Iic) == TRUE))
    {

    }

    status = XIic_Stop(&Iic);
	if (status != XST_SUCCESS) return XST_FAILURE;
    xil_printf("Stop ok\r\n");

    xil_printf("0x%1x\r\n", ReadBuffer[0]);


    UpdateGpioSwitchButton();

    return XST_SUCCESS;
}

static void ReceiveHandler(XIic *InstancePtr)
{
    RecievePending = 0;
}

static void SendHandler(XIic *InstancePtr)
{
    RecievePending = 0;
}

static void StatusHandler(XIic *InstancePtr, int Event)
{
}



/*****************************************************************************/
/**
*
* This function update axi_gpio_led based on state of axi_gpio_switchbutton
*
* @param	None.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void UpdateGpioSwitchButton()
{
    int switches = XGpio_DiscreteRead(&GpioSwitchButton, AXI_GPIO_SWITCHBUTTON_SWITCH_CHANNEL);
    
    int rgb_outputs = AXI_GPIO_LED_RGB_OFF;
    if (switches & AXI_GPIO_SWITCHBUTTON_SWITCH0_MASK) {
        rgb_outputs |= AXI_GPIO_LED_RGB0_R_MASK | AXI_GPIO_LED_RGB0_G_MASK | AXI_GPIO_LED_RGB0_B_MASK;
    }
    if (switches & AXI_GPIO_SWITCHBUTTON_SWITCH1_MASK) {
        rgb_outputs |= AXI_GPIO_LED_RGB1_R_MASK | AXI_GPIO_LED_RGB1_G_MASK | AXI_GPIO_LED_RGB1_B_MASK;
    }

    XGpio_DiscreteWrite(&GpioLed, AXI_GPIO_LED_RGB_CHANNEL, rgb_outputs);

    int buttons = XGpio_DiscreteRead(&GpioSwitchButton, AXI_GPIO_SWITCHBUTTON_BUTTON_CHANNEL);
    
    int plain_outputs = AXI_GPIO_LED_PLAIN_OFF;
    if (buttons & AXI_GPIO_SWITCHBUTTON_BUTTON0_MASK) {
        plain_outputs |= AXI_GPIO_LED_PLAIN0_MASK;
    }
    if (buttons & AXI_GPIO_SWITCHBUTTON_BUTTON1_MASK) {
        plain_outputs |= AXI_GPIO_LED_PLAIN1_MASK;
    }
    if (buttons & AXI_GPIO_SWITCHBUTTON_BUTTON2_MASK) {
        plain_outputs |= AXI_GPIO_LED_PLAIN2_MASK;
    }
    if (buttons & AXI_GPIO_SWITCHBUTTON_BUTTON3_MASK) {
        plain_outputs |= AXI_GPIO_LED_PLAIN3_MASK;
    }

    XGpio_DiscreteWrite(&GpioLed, AXI_GPIO_LED_PLAIN_CHANNEL, plain_outputs);
}

