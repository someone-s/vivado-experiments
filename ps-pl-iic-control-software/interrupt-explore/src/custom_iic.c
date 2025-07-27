
/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * custom_iic.c: simple test application
 */

#include <xparameters.h>
#include <xiic.h>
#include "custom_iic.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */

#define INTC_AXI_IIC_ARDUINO_INT_ID	        (INTC_TranslateIrqF2pToActual(0))

/************************** Function Prototypes ******************************/

/************************** Variable Definitions *****************************/
void (*StoredInterruptAction)();

volatile struct {
    int EventStatus;
    int RemainingReceiveBytes;
    int EventStatusUpdated;
    int ReceiveBytesUpdated;
} HandlerInfo;

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
int InitIic(XIic *InstancePtr)
{
    int status;

    XIic_Config *IicConfig = XIic_LookupConfig(XPAR_AXI_IIC_ARDUINO_BASEADDR);

    status = XIic_CfgInitialize(InstancePtr, IicConfig, IicConfig->BaseAddress);
    if (status != XST_SUCCESS) return XST_FAILURE;

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
int EnableIicInterrupt(XScuGic *XScuGicInstancePtr, XIic *XIicInstancePtr)
{
    int status;

	XScuGic_SetPriorityTriggerType(XScuGicInstancePtr, INTC_AXI_IIC_ARDUINO_INT_ID, 0xA0, 0x3);

    status = XScuGic_Connect(XScuGicInstancePtr, INTC_AXI_IIC_ARDUINO_INT_ID, (Xil_InterruptHandler)XIic_InterruptHandler, XIicInstancePtr);
    if (status != XST_SUCCESS) return XST_FAILURE;

    XScuGic_Enable(XScuGicInstancePtr, INTC_AXI_IIC_ARDUINO_INT_ID);

    return XST_SUCCESS;
}

