/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * custom_gpioled.h: simple test application
 */

#ifndef CUSTOM_GPIO_LED_H
#define CUSTOM_GPIO_LED_H

#include <xgpio.h>

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */

#define AXI_GPIO_LED_RGB_CHANNEL    1
#define AXI_GPIO_LED_PLAIN_CHANNEL  2

#define AXI_GPIO_LED_RGB_OFF 0
#define AXI_GPIO_LED_RGB0_R_MASK 0b000100
#define AXI_GPIO_LED_RGB0_G_MASK 0b000010
#define AXI_GPIO_LED_RGB0_B_MASK 0b000001
#define AXI_GPIO_LED_RGB1_R_MASK 0b100000
#define AXI_GPIO_LED_RGB1_G_MASK 0b010000
#define AXI_GPIO_LED_RGB1_B_MASK 0b001000

#define AXI_GPIO_LED_PLAIN_OFF 0
#define AXI_GPIO_LED_PLAIN0_MASK 0b0001
#define AXI_GPIO_LED_PLAIN1_MASK 0b0010
#define AXI_GPIO_LED_PLAIN2_MASK 0b0100
#define AXI_GPIO_LED_PLAIN3_MASK 0b1000

/************************** Function Prototypes ******************************/
extern int CGpioL_Init(XGpio *InstancePtr);

#endif