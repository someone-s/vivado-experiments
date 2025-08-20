/******************************************************************************
 * Copyright (C) 202X.
 * SPDX-License-Identifier: X
 ******************************************************************************/
/*
 * custom_uart.c: simple test application
 */

#ifndef CUSTOM_SSD1308_H
#define CUSTOM_SSD1308_H

#include <xiic.h>

/************************** Variable Definitions *****************************/
typedef enum {
  HORIZONTAL,
  VERTICAL,
  PAGE,
} CSSD1308_MemoryAddressMode;

/************************** Function Prototypes ******************************/
extern int CSSD1308_Init(
    XIic *InstancePtr);
extern int CSSD1308_SetMemoryAddressMode(
    XIic *InstancePtr,
    CSSD1308_MemoryAddressMode Mode);
extern int CSSD1308_SetHorizontalVerticalAddressRange(
    XIic *InstancePtr, 
    CSSD1308_MemoryAddressMode Mode, 
    u8 PageStart, u8 PageEnd, u8 ColumnStart, u8 ColumnEnd);
extern int CSSD1308_SetPageAddressRange(
    XIic *InstancePtr,
    CSSD1308_MemoryAddressMode Mode,
    u8 PageAddresss);
extern int CSSD1308_WriteData(
    XIic *InstancePtr, 
    u8 *Data, 
    int DataByteCount);
#endif