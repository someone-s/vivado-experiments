
/******************************************************************************
 * Copyright (C) 202X.
 * SPDX-License-Identifier: X
 ******************************************************************************/
/*
 * custom_iic.c: simple test application
 */

#include "custom_iic.h"
#include <xiic.h>
#include <xiic_l.h>
#include <xil_printf.h>
#include <xil_types.h>
#include <xparameters.h>
#include <xstatus.h>

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */

#define INTC_AXI_IIC_ARDUINO_INT_ID (INTC_TranslateIrqF2pToActual(0))

/************************** Function Prototypes ******************************/
static void Handler(void *CallbackRef, int RemainingBytes);

/************************** Variable Definitions *****************************/
volatile u8 TransmissionInProgress;

/*****************************************************************************/
/**
 *
 * This function setups the axi_gpio_led
 *
 * @param	None.
 *
 * @return	XST_SCCCESS if no error.
 *
 * @note		None.
 *
 ******************************************************************************/
int CIic_Init(XIic *InstancePtr) {
  	int status;

  	XIic_Config *IicConfig = XIic_LookupConfig(XPAR_AXI_IIC_ARDUINO_BASEADDR);

  	status = XIic_CfgInitialize(InstancePtr, IicConfig, IicConfig->BaseAddress);
  	if (status != XST_SUCCESS) return XST_FAILURE;

  	return XST_SUCCESS;
}

/*****************************************************************************/
/**
 *
 * This function connects and enable interrupt from axi_gpio_switchbutton
 *
 * @param	None.
 *
 * @return	XST_SUCCESS if no error.
 *
 * @note		None.
 *
 ******************************************************************************/
int CIic_EnableInterrupt(XScuGic *XScuGicInstancePtr, XIic *XIicInstancePtr) {
  	int status;
	
  	XIic_SetSendHandler(XIicInstancePtr, NULL, (XIic_Handler)Handler);
  	XIic_SetRecvHandler(XIicInstancePtr, NULL, (XIic_Handler)Handler);

  	XScuGic_SetPriorityTriggerType(XScuGicInstancePtr, INTC_AXI_IIC_ARDUINO_INT_ID, 0xA0, 0x3);

  	status = XScuGic_Connect(XScuGicInstancePtr, INTC_AXI_IIC_ARDUINO_INT_ID, (Xil_InterruptHandler)XIic_InterruptHandler, XIicInstancePtr);
  	if (status != XST_SUCCESS) return XST_FAILURE;

  	XScuGic_Enable(XScuGicInstancePtr, INTC_AXI_IIC_ARDUINO_INT_ID);

  	return XST_SUCCESS;
}

/*****************************************************************************/
/**
 *
 * This function wraps XIic to read single byte
 *
 * @param	None.
 *
 * @return	XST_SUCCESS if no error.
 *
 * @note		None.
 *
 ******************************************************************************/
int CIic_SyncReadByte(XIic *InstancePtr, int SlaveAddress, u8 RegisterAddress, u8 *RegisterDataPtr) {
	return CIic_SyncReadBytes(InstancePtr, SlaveAddress, RegisterAddress, RegisterDataPtr, 1);
}

/*****************************************************************************/
/**
 *
 * This function wraps XIic to read multiple bytes
 *
 * @param	None.
 *
 * @return	XST_SUCCESS if no error.
 *
 * @note		None.
 *
 ******************************************************************************/
int CIic_SyncReadBytes(XIic *InstancePtr, int SlaveAddress, u8 RegisterAddress, u8 *DataBuffer, int ByteCount) {
  	int Status;

  	Status = XIic_SetAddress(InstancePtr, XII_ADDR_TO_SEND_TYPE, SlaveAddress);
  	if (Status != XST_SUCCESS) return XST_FAILURE;

	TransmissionInProgress = TRUE;

  	// need to update to support 2 byte addresses
  	InstancePtr->Options |= XII_REPEATED_START_OPTION;
  	Status = XIic_MasterSend(InstancePtr, &RegisterAddress, 1);
  	if (Status != XST_SUCCESS) return XST_FAILURE;

	while (TransmissionInProgress) {}

	TransmissionInProgress = TRUE;

	InstancePtr->Options &= ~XII_REPEATED_START_OPTION;
  	Status = XIic_MasterRecv(InstancePtr, DataBuffer, ByteCount);
  	if (Status != XST_SUCCESS) return XST_FAILURE;

	while (TransmissionInProgress || XIic_IsIicBusy(InstancePtr)) {}

  	return XST_SUCCESS;
}

/*****************************************************************************/
/**
 *
 * This function wraps XIic to read single byte
 *
 * @param	None.
 *
 * @return	XST_SUCCESS if no error.
 *
 * @note		None.
 *
 ******************************************************************************/
int CIic_SyncWriteByte(XIic *InstancePtr, int SlaveAddress, u8 RegisterAdrress, u8 RegisterData) {
	u8 DataBuffer[] = { RegisterAdrress, RegisterData };
	return CIic_SyncWriteBytes(InstancePtr, SlaveAddress, DataBuffer, 2);
}

/*****************************************************************************/
/**
 *
 * This function wraps XIic to write bytes
 *
 * @param	None.
 *
 * @return	XST_SUCCESS if no error.
 *
 * @note		None.
 *
 ******************************************************************************/
int CIic_SyncWriteBytes(XIic *InstancePtr, int SlaveAddress, u8 *RegisterDataBuffer, int ByteCount) {
  	int Status;

  	Status = XIic_SetAddress(InstancePtr, XII_ADDR_TO_SEND_TYPE, SlaveAddress);
  	if (Status != XST_SUCCESS) return XST_FAILURE;

	TransmissionInProgress = TRUE;

  	Status = XIic_MasterSend(InstancePtr, RegisterDataBuffer, ByteCount);
  	if (Status != XST_SUCCESS) return XST_FAILURE;

	while (TransmissionInProgress || XIic_IsIicBusy(InstancePtr)) {}

  	return XST_SUCCESS;
}

/*****************************************************************************/
/**
 *
 * This function wraps XIic to read single byte
 *
 * @param	None.
 *
 * @return	XST_SUCCESS if no error.
 *
 * @note		None.
 *
 ******************************************************************************/
int CIic_SyncWriteBit(XIic *InstancePtr, int SlaveAddress, u8 RegisterAdrress, u8 BitPosition, u8 BitSet) {
	int Status;

	u8 originalData;
	Status = CIic_SyncReadByte(InstancePtr, SlaveAddress, RegisterAdrress, &originalData);

  	if (Status != XST_SUCCESS) return XST_FAILURE;
	u8 bitModifier = BitSet << BitPosition;
	u8 updatedData = BitSet == 1 ? (originalData | bitModifier) : (originalData & ~bitModifier);

	u8 DataBuffer[] = { RegisterAdrress, updatedData };
	return CIic_SyncWriteBytes(InstancePtr, SlaveAddress, DataBuffer, 2);
}

/*****************************************************************************/
/**
 *
 * This function wraps XIic to read single byte
 *
 * @param	None.
 *
 * @return	XST_SUCCESS if no error.
 *
 * @note		None.
 *
 ******************************************************************************/
int CIic_SyncWriteBits(XIic *InstancePtr, int SlaveAddress, u8 RegisterAdrress, u8 BitStart, u8 BitCount, u8 BitData) {
	int Status;

	u8 originalData;
	Status = CIic_SyncReadByte(InstancePtr, SlaveAddress, RegisterAdrress, &originalData);
  	if (Status != XST_SUCCESS) return XST_FAILURE;
	
	u8 offset = BitStart - BitCount + 1;
	u8 bitMask = ((1 << BitCount) - 1) << offset;
	u8 updatedData = originalData;
	updatedData &= ~bitMask;
	updatedData |= (BitData << offset) & bitMask;

	u8 DataBuffer[] = { RegisterAdrress, updatedData };
	return CIic_SyncWriteBytes(InstancePtr, SlaveAddress, DataBuffer, 2);
}

/*****************************************************************************/
/**
 *
 * This function wraps XIic to compare bits to see if they match expected
 *
 * @param	None.
 *
 * @return	XST_SUCCESS if no error.
 *
 * @note		None.
 *
 ******************************************************************************/
int CIic_IsMatchBit(XIic *InstancePtr, int SlaveAddress, u8 RegisterAdrress, u8 BitPosition, u8 BitSet, u8 *Result) {

	int Status;

	u8 originalData;
	Status = CIic_SyncReadByte(InstancePtr, SlaveAddress, RegisterAdrress, &originalData);
  	if (Status != XST_SUCCESS) return XST_FAILURE;

	originalData >>= BitPosition;
	originalData &= 0b00000001;

	*Result = originalData == BitSet ? TRUE : FALSE;

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
 *
 * This function wraps XIic to compare bits to see if they match expected
 *
 * @param	None.
 *
 * @return	XST_SUCCESS if no error.
 *
 * @note		None.
 *
 ******************************************************************************/
int CIic_IsMatchBits(XIic *InstancePtr, int SlaveAddress, u8 RegisterAdrress, u8 BitStart, u8 BitCount, u8 BitData, u8 *Result) {

	int Status;

	u8 originalData;
	Status = CIic_SyncReadByte(InstancePtr, SlaveAddress, RegisterAdrress, &originalData);
  	if (Status != XST_SUCCESS) return XST_FAILURE;

	u8 offset = BitStart - BitCount + 1;
	u8 bitMask = ((1 << BitCount) - 1) << offset;

	originalData &= bitMask;

	*Result = originalData == (BitData << offset) ? TRUE : FALSE;

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
 *
 * XIic callback handler
 *
 * @param	None.
 *
 * @return	XST_SUCCESS if no error.
 *
 * @note		None.
 *
 ******************************************************************************/
static void Handler(__attribute__((unused)) void *CallbackRef,  __attribute__((unused)) int RemainingBytes) {
	TransmissionInProgress = FALSE;
}
