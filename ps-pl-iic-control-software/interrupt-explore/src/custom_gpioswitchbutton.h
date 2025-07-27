/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * custom_gpioswitchbutton.h: simple test application
 */

#ifndef CUSTOM_GPIO_SWITCHBUTTON_H
#define CUSTOM_GPIO_SWITCHBUTTON_H

#include <xgpio.h>
#include <xscugic.h>
#include "custom_interrupt.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */

#define AXI_GPIO_SWITCHBUTTON_SWITCH_CHANNEL    1
#define AXI_GPIO_SWITCHBUTTON_BUTTON_CHANNEL    2

#define AXI_GPIO_SWITCHBUTTON_SWITCH0_MASK  0b01
#define AXI_GPIO_SWITCHBUTTON_SWITCH1_MASK  0b10
#define AXI_GPIO_SWITCHBUTTON_BUTTON0_MASK  0b0001
#define AXI_GPIO_SWITCHBUTTON_BUTTON1_MASK  0b0010
#define AXI_GPIO_SWITCHBUTTON_BUTTON2_MASK  0b0100
#define AXI_GPIO_SWITCHBUTTON_BUTTON3_MASK  0b1000

/************************** Function Prototypes ******************************/
int InitGpioSwitchButton(XGpio *InstancePtr);
int EnableGpioSwitchButtonInterrupt(XScuGic *XScuGicInstancePtr, XGpio *XGpioInstancePtr, void (*InterruptAction)());

#endif