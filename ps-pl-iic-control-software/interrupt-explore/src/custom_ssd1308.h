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

/************************** Function Prototypes ******************************/
extern int CSSD1308_Init(XIic *InstancePtr);

#endif