
/******************************************************************************
 * Copyright (C) 202X.
 * SPDX-License-Identifier: X
 ******************************************************************************/
/*
 * custom_ssd1308.c: simple test application
 */

#include "custom_display_ssd1308.h"
#include "custom_ssd1308.h"
#include <xil_printf.h>
#include <stdio.h>
#include <xstatus.h>

/************************** Variable Definitions *****************************/
u8 buffer[1 + 128 * 8]; // row0 -> row1 -> row2 ...

/************************** Function Prototypes ******************************/

/*****************************************************************************/
/**
 *
 * This function set a single pixel in buffer
 *
 * @param	None.
 *
 * @return  None
 *
 * @note    None.
 *
 ******************************************************************************/
void Buffer_SetPixel(int X, int Y) 
{
    buffer[1 + (Y / 8) * 128 + X] |= 0b1 << (Y % 8);
}

/*****************************************************************************/
/**
 *
 * This function clear a single pixel in buffer
 *
 * @param	None.
 *
 * @return  None
 *
 * @note    None.
 *
 ******************************************************************************/
void Buffer_ClearPixel(int X, int Y) 
{
    buffer[1 + (Y / 8) * 128 + X] &= ~(0b1 << (Y % 8));
}

/*****************************************************************************/
/**
 *
 * This function set a single pixel in buffer
 *
 * @param	None.
 *
 * @return  None
 *
 * @note    None.
 *
 ******************************************************************************/
int Buffer_TransferPixels(XIic *InstancePtr, int lowX, int lowY, int highX, int highY) 
{
    int Status;

    Status = CSSD1308_SetHorizontalVerticalAddressRange(InstancePtr, HORIZONTAL, lowY / 8, highY / 8, lowX, highX);
    if (Status != XST_SUCCESS) return XST_FAILURE;
    print("SSD1308 vertical mode set\r\n");

    for (int r = lowY / 8; r <= highY / 8; r++) 
    {
        u8 stored = buffer[r * 128 + lowX];
        Status = CSSD1308_WriteData(InstancePtr, &buffer[r * 128 + lowX], 1 + highX - lowX + 1);
        buffer[r * 128 + lowX] = stored;
        if (Status != XST_SUCCESS) return XST_FAILURE;
        print("SSD1308 data wrote\r\n");
    }

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
 * @note	None.
 *
 ******************************************************************************/
int CDisplay_Init(XIic *InstancePtr)
{
    int Status;

    memset(buffer, 0, 128 * 8);

	Status = CSSD1308_Init(InstancePtr);
    if (Status != XST_SUCCESS) return XST_FAILURE;
        print("SSD1308 a\r\n");

    Status = CSSD1308_SetMemoryAddressMode(InstancePtr, HORIZONTAL);
    if (Status != XST_SUCCESS) return XST_FAILURE;
        print("SSD1308 b\r\n");

    Status = Buffer_TransferPixels(InstancePtr, 0, 0, 127, 63);
    if (Status != XST_SUCCESS) return XST_FAILURE;
        print("SSD1308 c\r\n");

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
 * @note	None.
 *
 ******************************************************************************/
int CDisplay_Drawline(XIic *InstancePtr, int startX, int startY, int endX, int endY) 
{
    int minX = startX < endX ? startX : endX;
    int maxX = startX > endX ? startX : endX;

    int minY = startY < endY ? startY : endY;
    int maxY = startY > endY ? startY : endY;

    int stepCountX = maxX - minX + 1;
    int stepCountY = maxY - minY + 1;
    int stepCount = stepCountX > stepCountY ? stepCountX : stepCountY;
    
    float stepX = (float)stepCountX / stepCount;
    float stepY = (float)stepCountY / stepCount;

    for (int s = 0; s < stepCount; s++)
        Buffer_SetPixel(minX + (int)(stepX * s), minY + (int)(stepY * s));


    printf("%i %i %i %i\r\n", minX, minY, maxX, maxY);

    return Buffer_TransferPixels(InstancePtr, minX, minY, maxX, maxY);
}