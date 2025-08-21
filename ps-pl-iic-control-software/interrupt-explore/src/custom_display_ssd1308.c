
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
    if (X < 0 || X > 127 || Y < 0 || Y > 63) return;
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
    if (X < 0 || X > 127 || Y < 0 || Y > 63) return;
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
  lowX = lowX > 127 ? 127 : lowX;
  highX = highX > 127 ? 127 : highX;
  lowX = lowX < 0 ? 0 : lowX;
  highX = highX < 0 ? 0 : highX;

  lowY = lowY > 63 ? 63 : lowY;
  highY = highY > 63 ? 63 : highY;
  lowY = lowY < 0 ? 0 : lowY;
  highY = highY < 0 ? 0 : highY;

    int Status;

    Status = CSSD1308_SetHorizontalVerticalAddressRange(InstancePtr, HORIZONTAL, lowY / 8, highY / 8, lowX, highX);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    for (int r = lowY / 8; r <= highY / 8; r++) 
    {
        u8 stored = buffer[r * 128 + lowX];
        Status = CSSD1308_WriteData(InstancePtr, &buffer[r * 128 + lowX], 1 + highX - lowX + 1);
        buffer[r * 128 + lowX] = stored;
        if (Status != XST_SUCCESS) return XST_FAILURE;
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

    Status = CSSD1308_SetMemoryAddressMode(InstancePtr, HORIZONTAL);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    Status = Buffer_TransferPixels(InstancePtr, 0, 0, 127, 63);
    if (Status != XST_SUCCESS) return XST_FAILURE;

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

    return Buffer_TransferPixels(InstancePtr, minX, minY, maxX, maxY);
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
int CDisplay_DrawChar(XIic *InstancePtr, char Character, int X, int Y)
{
    switch (Character) {
        case 'A':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X+3, Y);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y+1);
            Buffer_SetPixel(X+2, Y+1);
            break;
        
        case 'B':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+3);
            break;

        case 'C':
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+3);
            break;

        case 'D':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            break;

        case 'E':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+3, Y);
            break;

        case 'F':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            break;

        case 'G':
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+3, Y+1);
            break;

        case 'H':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+3, Y);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            break;

        case 'I':
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+3, Y);
            Buffer_SetPixel(X+2, Y+1);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+2, Y+3);
            break;

        case 'J':
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y+1);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+2, Y+3);
            break;

        case 'K':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+2, Y+3);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+1);
            Buffer_SetPixel(X+3, Y);
            break;

        case 'L':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+3, Y);
            break;

        case 'M':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+3, Y);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+1, Y+3);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+2, Y+3);
            Buffer_SetPixel(X+2, Y+4);
            break;

        case 'N':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+3, Y);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+1, Y+3);
            Buffer_SetPixel(X+2, Y+1);
            Buffer_SetPixel(X+2, Y+2);
            break;

        case 'O':
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            break;

        case 'P':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            break;

        case 'Q':
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y+1);
            Buffer_SetPixel(X+3, Y);
            break;

        case 'R':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+3, Y);
            Buffer_SetPixel(X+2, Y+1);
            break;

        case 'S':
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X+3, Y+1);
            break;
            
        case 'T':
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+2, Y+1);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+2, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+3, Y+4);
            break;

        case 'U':
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            break;

        case 'V':
            Buffer_SetPixel(X+1, Y+1);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+2, Y);
            break;

        case 'W':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+3, Y);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+1, Y+1);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+2, Y+1);
            Buffer_SetPixel(X+2, Y+2);
            break;

        case 'X':
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+3);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+2, Y+1);
            Buffer_SetPixel(X+3, Y);
            break;

        case 'Y':
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X, Y);
            break;
            
        case 'Z':
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+3, Y);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            break;

        case '1':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+3, Y);
            Buffer_SetPixel(X+2, Y+1);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+2, Y+3);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y+3);
            break;

        case '2':
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+3, Y);
            Buffer_SetPixel(X+1, Y+1);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X, Y+3);
            break;

        case '3':
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X, Y+3);
            break;

        case '4':
            Buffer_SetPixel(X+3, Y);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X+1, Y+4);
            break;

        case '5':
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X, Y);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            break;
            
        case '6':
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+3, Y+1);
            break;

        case '7':
            Buffer_SetPixel(X, Y+4);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+3, Y+4);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+2, Y+1);
            Buffer_SetPixel(X+2, Y);
            break;

        case '8':
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X+3, Y+1);
            break;


        case '9':
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+2);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            break;

        case '0':
            Buffer_SetPixel(X, Y+1);
            Buffer_SetPixel(X, Y+2);
            Buffer_SetPixel(X, Y+3);
            Buffer_SetPixel(X+3, Y+1);
            Buffer_SetPixel(X+3, Y+2);
            Buffer_SetPixel(X+3, Y+3);
            Buffer_SetPixel(X+1, Y+4);
            Buffer_SetPixel(X+2, Y+4);
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+1, Y+1);
            Buffer_SetPixel(X+1, Y+2);
            Buffer_SetPixel(X+2, Y+3);
            break;

        case '.':
            Buffer_SetPixel(X+1, Y);
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+1, Y+1);
            Buffer_SetPixel(X+2, Y+1);
            break;

        case ',':
            Buffer_SetPixel(X+2, Y);
            Buffer_SetPixel(X+1, Y+1);
            Buffer_SetPixel(X+2, Y+1);
            break;

    }

    return Buffer_TransferPixels(InstancePtr, X, Y, X+3, Y+4);
}