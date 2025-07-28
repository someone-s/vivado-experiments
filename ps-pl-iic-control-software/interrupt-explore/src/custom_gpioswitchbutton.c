
/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * custom_gpioswitchbutton.c: simple test application
 */

#include <xparameters.h>
#include <xgpio.h>
#include <xscugic.h>
#include "custom_interrupt.h"
#include "custom_gpioswitchbutton.h"


/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */

#define AXI_GPIO_SWITCHBUTTON_SWITCH_IR_MASK    XGPIO_IR_CH1_MASK
#define AXI_GPIO_SWITCHBUTTON_BUTTON_IR_MASK    XGPIO_IR_CH2_MASK
#define AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK   (AXI_GPIO_SWITCHBUTTON_SWITCH_IR_MASK | AXI_GPIO_SWITCHBUTTON_BUTTON_IR_MASK)

#define INTC_AXI_GPIO_SWITCHBUTTON_INT_ID	(INTC_TranslateIrqF2pToActual(3))


/************************** Function Prototypes ******************************/
static void CGpioSB_InterruptHandler(void *InstancePtr);

/************************** Variable Definitions *****************************/
static void (*StoredInterruptAction)() = NULL;

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
int CGpioSB_Init(XGpio *InstancePtr)
{
    int status;

    // Channel 1 is switches 0 and 1
    // Channel 2 is buttons 0 to 3
    status = XGpio_Initialize(InstancePtr, XPAR_AXI_GPIO_SWITCHBUTTON_BASEADDR);
    if (status != XST_SUCCESS) return XST_FAILURE;
    // bit set 1 for input (instead of 0 for output)
    XGpio_SetDataDirection(InstancePtr, AXI_GPIO_SWITCHBUTTON_SWITCH_CHANNEL, 0b11);
    XGpio_SetDataDirection(InstancePtr, AXI_GPIO_SWITCHBUTTON_BUTTON_CHANNEL, 0b1111);

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
int CGpioSB_EnableInterrupt(XScuGic *XScuGicInstancePtr, XGpio *XGpioInstancePtr, void (*InterruptAction)())
{
    int status;

    StoredInterruptAction = InterruptAction;

    status = XScuGic_Connect(XScuGicInstancePtr, INTC_AXI_GPIO_SWITCHBUTTON_INT_ID, (Xil_InterruptHandler)CGpioSB_InterruptHandler, (void *)XGpioInstancePtr);
    if (status != XST_SUCCESS) return XST_FAILURE;

    XGpio_InterruptEnable(XGpioInstancePtr, AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK);
    XGpio_InterruptGlobalEnable(XGpioInstancePtr);

    XScuGic_Enable(XScuGicInstancePtr, INTC_AXI_GPIO_SWITCHBUTTON_INT_ID);

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
static void CGpioSB_InterruptHandler(void *InstancePtr)
{
    XGpio_InterruptDisable(InstancePtr, AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK);

    // Ignore duplicate interrupts
    if ((XGpio_InterruptGetStatus(InstancePtr) & AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK) == 0)
        return;

    if (StoredInterruptAction != NULL)
        (*StoredInterruptAction)();

    // Reset interrupt
    XGpio_InterruptClear(InstancePtr, AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK);
    XGpio_InterruptEnable(InstancePtr, AXI_GPIO_SWITCHBUTTON_COMBINE_IR_MASK);
}