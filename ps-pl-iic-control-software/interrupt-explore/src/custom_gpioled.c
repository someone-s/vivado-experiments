
/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * custom_gpioled.c: simple test application
 */

#include <xparameters.h>
#include "custom_gpioled.h"


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
int InitGpioLed(XGpio *InstancePtr)
{
    int status;

    // Channel 1 is rgb led 0,1,2 and 3,4,5
    // Channel 2 is plain led 0 to 4
    status = XGpio_Initialize(InstancePtr, XPAR_AXI_GPIO_LED_BASEADDR);
    if (status != XST_SUCCESS) return XST_FAILURE;
    // bit set 0 for output (instead of 1 for oinput)
    XGpio_SetDataDirection(InstancePtr, AXI_GPIO_LED_RGB_CHANNEL, 0b000000);
    XGpio_SetDataDirection(InstancePtr, AXI_GPIO_LED_PLAIN_CHANNEL, 0b0000);

    return XST_SUCCESS;
}