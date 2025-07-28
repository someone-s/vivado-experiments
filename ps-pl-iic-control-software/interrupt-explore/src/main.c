/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * simpleled.c: simple test application
 */

#include <xiic.h>
#include <stdint.h>
#include <xstatus.h>
#include <xgpio.h>
#include <xiic.h>
#include <xil_printf.h>
#include "custom_interrupt.h"
#include "custom_mpu9250.h"
#include "custom_ssd1308.h"
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
void UpdateGpio();

/************************** Variable Definitions *****************************/

XScuGic Gic;
XGpio GpioSB;
XGpio GpioLed;
XIic Iic;

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

    status = CUart_Init();
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("UART running\r\n");

    status = CGpioSB_Init(&GpioSB);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("GPIO IN running\r\n");

    status = CGpioL_Init(&GpioLed);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("GPIO OUT running\r\n");

    status = CIic_Init(&Iic);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("IIC configured\r\n");

    status = CGic_BeginInit(&Gic);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("GIC begin configured\r\n");

    status = CGpioSB_EnableInterrupt(&Gic, &GpioSB, &UpdateGpio);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("GPIO interrupt configured\r\n");

    status = CIic_EnableInterrupt(&Gic, &Iic);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("IIC interrupt configured\r\n");

    status = CGic_EndInit(&Gic);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("GIC end configured\r\n");

	status = XIic_Start(&Iic);
    if (status != XST_SUCCESS) return XST_FAILURE;

	status = CMPU9250_Init(&Iic);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("MPU9250 initialized\r\n");

	status = CSSD1308_Init(&Iic);
    if (status != XST_SUCCESS) return XST_FAILURE;
    print("SSD1308 initialized\r\n");

    UpdateGpio();

    // u8 data;
    // status = CIic_SyncReadByte(&Iic, 0x68, 0x6c, &data);
    // if (status != XST_SUCCESS) return XST_FAILURE;
    // xil_printf("0x%x\r\n",data);

    while (TRUE) {
        int16_t accelX, accelY, accelZ, temp, gyroX, gyroY, gyroZ, magnoX, magnoY, magnoZ;
        status = CMPU9250_GetAccelTempGyro(&Iic, &accelX, &accelY, &accelZ, &temp, &gyroX, &gyroY, &gyroZ);
        if (status != XST_SUCCESS) return XST_FAILURE;
        status = CMPU9250_GetMagno(&Iic, &magnoX, &magnoY, &magnoZ);
        if (status != XST_SUCCESS) return XST_FAILURE;
        xil_printf("%6d %6d %6d %6d %6d %6d %6d %6d %6d %6d\r\n", accelX, accelY, accelZ, temp, gyroX, gyroY, gyroZ, magnoX, magnoY, magnoZ);
    }

    return XST_SUCCESS;
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
void UpdateGpio()
{
    int switches = XGpio_DiscreteRead(&GpioSB, AXI_GPIO_SWITCHBUTTON_SWITCH_CHANNEL);
    
    int rgb_outputs = AXI_GPIO_LED_RGB_OFF;
    if (switches & AXI_GPIO_SWITCHBUTTON_SWITCH0_MASK) {
        rgb_outputs |= AXI_GPIO_LED_RGB0_R_MASK | AXI_GPIO_LED_RGB0_G_MASK | AXI_GPIO_LED_RGB0_B_MASK;
    }
    if (switches & AXI_GPIO_SWITCHBUTTON_SWITCH1_MASK) {
        rgb_outputs |= AXI_GPIO_LED_RGB1_R_MASK | AXI_GPIO_LED_RGB1_G_MASK | AXI_GPIO_LED_RGB1_B_MASK;
    }

    XGpio_DiscreteWrite(&GpioLed, AXI_GPIO_LED_RGB_CHANNEL, rgb_outputs);

    int buttons = XGpio_DiscreteRead(&GpioSB, AXI_GPIO_SWITCHBUTTON_BUTTON_CHANNEL);
    
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

