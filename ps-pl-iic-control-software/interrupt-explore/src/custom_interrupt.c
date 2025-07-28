
/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * custom_interrupt.c: simple test application
 */

#include <xil_exception.h>
#include <xparameters.h>
#include <xscugic.h>
#include "custom_interrupt.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */


/************************** Function Prototypes ******************************/
int BeginInitInterruptController(XScuGic *XScuGicInstancePtr);
int EndInitInterruptController(XScuGic *XScuGicInstancePtr);
int SetupInterruptSystem(XScuGic *XScuGicInstancePtr);

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
int CGic_BeginInit(XScuGic *XScuGicInstancePtr)
{
    int status;

    XScuGic_Config *GicConfig;

    GicConfig = XScuGic_LookupConfig(XPAR_INTC_BASEADDR);

    status = XScuGic_CfgInitialize(XScuGicInstancePtr, GicConfig, GicConfig->CpuBaseAddress);
    if (status != XST_SUCCESS) return XST_FAILURE;

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
int CGic_EndInit(XScuGic *XScuGicInstancePtr)
{
    int status;

    status = SetupInterruptSystem(XScuGicInstancePtr);
    if (status != XST_SUCCESS) return XST_FAILURE;

    return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function setups the interrupt system on the arm side
*
* @param	None.
*
* @return	XST_SUCCESS if no error.
*
* @note		None.
*
******************************************************************************/
int SetupInterruptSystem(XScuGic *XScuGicInstancePtr)
{
    // Initialize exception table
    Xil_ExceptionInit();
    
    // Connect gic interrupt handler to ARM processor hardware
    Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT, (Xil_ExceptionHandler) XScuGic_InterruptHandler, XScuGicInstancePtr);

    // Enable interrupt in ARM
    Xil_ExceptionEnable();

    return XST_SUCCESS;
}
