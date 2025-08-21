/******************************************************************************
 * Copyright (C) 202X.
 * SPDX-License-Identifier: X
 ******************************************************************************/
/*
 * custom_uart.c: simple test application
 */

#ifndef CUSTOM_DISPLAY_SSD1308_H
#define CUSTOM_DISPLAY_SSD1308_H

#include <xiic.h>

/************************** Variable Definitions *****************************/


/************************** Function Prototypes ******************************/
extern int CDisplay_Init(XIic *InstancePtr);

extern int CDisplay_Drawline(
    XIic *InstancePtr, 
    int startX, int startY, 
    int endX, int endY);

extern int CDisplay_DrawChar(XIic *InstancePtr, char Character, int X, int Y);
#endif