/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * custom_iic.h: simple test application
 */

#ifndef CUSTOM_IIC_H
#define CUSTOM_IIC_H

#include <xiic.h>
#include <xscugic.h>
#include <xil_exception.h>
#include "custom_interrupt.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */

#define AXI_GPIO_SWITCHBUTTON_SWITCH_CHANNEL    1
#define AXI_GPIO_SWITCHBUTTON_BUTTON_CHANNEL    2

#define AXI_GPIO_SWITCHBUTTON_SWITCH0_MASK  0b01
#define AXI_GPIO_SWITCHBUTTON_SWITCH1_MASK  0b10
#define AXI_GPIO_SWITCHBUTTON_BUTTON0_MASK  0b0001
#define AXI_GPIO_SWITCHBUTTON_BUTTON1_MASK  0b0010
#define AXI_GPIO_SWITCHBUTTON_BUTTON2_MASK  0b0100
#define AXI_GPIO_SWITCHBUTTON_BUTTON3_MASK  0b1000


/************************** Struct Prototypes ******************************/
typedef struct {
    XIic *InstancePtr;
    int SlaveAddress;
    u8 *DataBuffer;
    int ByteStart;
    int ByteCount;
    void (*Callback)(int);
} CIic_WriteMultipleState;


/************************** Function Prototypes ******************************/
extern int CIic_Init(XIic *InstancePtr);
extern int CIic_EnableInterrupt(XScuGic *XScuGicInstancePtr, XIic *XIicInstancePtr);

extern int CIic_SyncReadByte(XIic *InstancePtr, int SlaveAddress,  u8 RegisterAddress, u8 *RegisterDataPtr);
extern int CIic_SyncReadBytes(XIic *InstancePtr, int SlaveAddress,  u8 RegisterAddress, u8 *DataBuffer, int ByteCount);
extern int CIic_SyncWriteByte(XIic *InstancePtr, int SlaveAddress, u8 RegisterAdrress, u8 RegisterData);
extern int CIic_SyncWriteBytes(XIic *InstancePtr, int SlaveAddress, u8 *RegisterDataBuffer, int ByteCount);
extern int CIic_SyncWriteBit(XIic *InstancePtr, int SlaveAddress, u8 RegisterAdrress, u8 BitPosition, u8 BitSet);
extern int CIic_SyncWriteBits(XIic *InstancePtr, int SlaveAddress, u8 RegisterAdrress, u8 BitStart, u8 BitCount, u8 BitData);
extern int CIic_IsMatchBit(XIic *InstancePtr, int SlaveAddress, u8 RegisterAdrress,u8 BitPosition, u8 BitSet, u8 *Result);
extern int CIic_IsMatchBits(XIic *InstancePtr, int SlaveAddress, u8 RegisterAdrress, u8 BitStart, u8 BitCount, u8 BitData, u8 *Result);

#endif