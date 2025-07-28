/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * custom_uart.c: simple test application
 */

#ifndef CUSTOM_MPU9250_H
#define CUSTOM_MPU9250_H

#include <stdint.h>
#include <xiic.h>

/************************** Function Prototypes ******************************/
extern int CMPU9250_Init(XIic *InstancePtr);

extern int CMPU9250_GetAccelTempGyro(XIic *InstancePtr, 
    int16_t *AccelX, int16_t *AccelY, int16_t *AccelZ, 
    int16_t *Temp,
    int16_t *GyroX, int16_t *GyroY, int16_t *GyroZ);

extern int CMPU9250_GetMagno(XIic *InstancePtr, 
    int16_t *MagnoX, int16_t *MagnoY, int16_t *MagnoZ);

#endif