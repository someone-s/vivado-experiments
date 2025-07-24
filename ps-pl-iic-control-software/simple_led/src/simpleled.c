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
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xgpio.h"
#include "xiic.h"

int main()
{
    init_platform();

    // print("Hello World\n\r");
    
    // Channel 1 is switches 0 and 1
    // Channel 2 is buttons 0 to 3
    XGpio gpio_switch_button;
    XGpio_Initialize(&gpio_switch_button, XPAR_AXI_GPIO_SWITCHBUTTON_BASEADDR);
    // bit set 1 for input (instead of 0 for output)
    XGpio_SetDataDirection(&gpio_switch_button, 1, 0b11);
    //XGpio_SetDataDirection(&gpio_switch_button, 2, 0b1111);

    // Channel 1 is rgb led 0,1,2 and 3,4,5
    // Channel 2 is plain led 0 to 4
    XGpio gpio_led;
    XGpio_Initialize(&gpio_led, XPAR_AXI_GPIO_LED_BASEADDR);
    // bit set 0 for output (instead of 1 for oinput)
    XGpio_SetDataDirection(&gpio_led, 1, 0b000000);
    XGpio_SetDataDirection(&gpio_led, 2, 0b0000);

    while (1) {
        int switches = XGpio_DiscreteRead(&gpio_switch_button, 1);
        
        int rgb_outputs = 0b000000;
        if (switches & 0b01) {
            rgb_outputs |= 0b000111;
        }
        if (switches & 0b10) {
            rgb_outputs |= 0b111000;
        }

        XGpio_DiscreteWrite(&gpio_led, 1, rgb_outputs);

        int buttons = XGpio_DiscreteRead(&gpio_switch_button, 2);
        
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

        XGpio_DiscreteWrite(&gpio_led, 2, plain_outputs);
    }

    cleanup_platform();
    return 0;
}
