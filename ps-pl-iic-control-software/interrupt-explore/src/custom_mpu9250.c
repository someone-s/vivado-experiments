
/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * custom_mpu9250.c: simple test application
 * based heavily upon I2Cdev device library by Jeff Rowberg, 
 * supplied from Seeed Grove - IMU 10 DOF info page
 */

/* ============================================
I2Cdev device library code is placed under the MIT license
Copyright (c) 2012 Jeff Rowberg

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
=============================================== */

#include <stdint.h>
#include <xiic.h>
#include <xil_types.h>
#include <xstatus.h>
#include <sleep.h>
#include "external_mpu9250.h"
#include "custom_iic.h"
#include "custom_mpu9250.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define MPU9250_DEVICE_ADDRESS  MPU9250_DEFAULT_ADDRESS

/************************** Function Prototypes ******************************/


/************************** Variable Definitions *****************************/


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
int CMPU9250_Init(XIic *InstancePtr)
{
    int Status;

    Status = CIic_SyncWriteBits(InstancePtr, 
        MPU9250_DEVICE_ADDRESS, MPU9250_RA_PWR_MGMT_1, 
        MPU9250_PWR1_CLKSEL_BIT, MPU9250_PWR1_CLKSEL_LENGTH, 
        MPU9250_CLOCK_PLL_XGYRO);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    Status = CIic_SyncWriteBits(InstancePtr, 
        MPU9250_DEVICE_ADDRESS, MPU9250_RA_GYRO_CONFIG, 
        MPU9250_GCONFIG_FS_SEL_BIT, MPU9250_GCONFIG_FS_SEL_LENGTH, 
        MPU9250_GYRO_FS_250);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    Status = CIic_SyncWriteBits(InstancePtr, 
        MPU9250_DEVICE_ADDRESS, MPU9250_RA_ACCEL_CONFIG, 
        MPU9250_ACONFIG_AFS_SEL_BIT, MPU9250_ACONFIG_AFS_SEL_LENGTH, 
        MPU9250_ACCEL_FS_2);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    Status = CIic_SyncWriteBit(InstancePtr, 
        MPU9250_DEVICE_ADDRESS, MPU9250_RA_PWR_MGMT_1, 
        MPU9250_PWR1_SLEEP_BIT, FALSE);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function gets the accelerometer and gyroscope measurement
*
* @param	None.
*
* @return	XST_SUCCESS if no error.
*
* @note		None.
*
******************************************************************************/
int CMPU9250_GetAccelTempGyro(XIic *InstancePtr, 
    int16_t *AccelX, int16_t *AccelY, int16_t *AccelZ, 
    int16_t *Temp,
    int16_t *GyroX, int16_t *GyroY, int16_t *GyroZ)
{
    int Status;

    u8 reading[14];
    Status = CIic_SyncReadBytes(InstancePtr, 
        MPU9250_DEVICE_ADDRESS, MPU9250_RA_ACCEL_XOUT_H, reading, 14);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    *AccelX = ((int16_t)reading[0] << 8) | reading[1];
    *AccelY = ((int16_t)reading[2] << 8) | reading[3];
    *AccelZ = ((int16_t)reading[4] << 8) | reading[5];
    *Temp   = ((int16_t)reading[6] << 8) | reading[7];
    *GyroX  = ((int16_t)reading[8] << 8) | reading[9];
    *GyroY  = ((int16_t)reading[10] << 8) | reading[11];
    *GyroZ  = ((int16_t)reading[12] << 8) | reading[13];

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
int CMPU9250_GetMagno(XIic *InstancePtr, 
    int16_t *MagnoX, int16_t *MagnoY, int16_t *MagnoZ)
{
    int Status;

    u8 Initialized;
    CIic_IsMatchBit(InstancePtr, MPU9250_DEVICE_ADDRESS, MPU9250_RA_INT_PIN_CFG, MPU9250_INTCFG_I2C_BYPASS_EN_BIT, TRUE, &Initialized);
    if (!Initialized)
    {
        // Enable bypass for access to magnometer
        Status = CIic_SyncWriteBit(InstancePtr, 
            MPU9250_DEVICE_ADDRESS, MPU9250_RA_INT_PIN_CFG, 
            MPU9250_INTCFG_I2C_BYPASS_EN_BIT, TRUE);
        if (Status != XST_SUCCESS) return XST_FAILURE;

        usleep(10000);
    }

    // Enable bypass for access to magnometer
    Status = CIic_SyncWriteBits(InstancePtr, 
        MPU9250_RA_MAG_ADDRESS, MPU9250_RA_MAG_CTRL1, 
        MPU9250_MCONFIG_MODE_BIT, MPU9250_MCONFIG_MODE_LENGTH,
        MPU9250_MAGNO_MODE_SINGLE);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    usleep(7500);

    u8 reading[6];
    // Enable bypass for access to magnometer
    Status = CIic_SyncReadBytes(InstancePtr, 
        MPU9250_RA_MAG_ADDRESS, MPU9250_RA_MAG_XOUT_L, reading, 6);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    *MagnoX = ((int16_t)reading[1] << 8) | reading[0];
    *MagnoY = ((int16_t)reading[3] << 8) | reading[2];
    *MagnoZ = ((int16_t)reading[5] << 8) | reading[4];

    return XST_SUCCESS;
}
