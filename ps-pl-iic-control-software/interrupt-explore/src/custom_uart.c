
/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * custom_uart.c: simple test application
 */

#include <xuartps.h>
#include <xparameters.h>
#include "custom_uart.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */


/************************** Function Prototypes ******************************/
int CUart_Init();

/************************** Variable Definitions *****************************/

XUartPs Uart;
static XUartPs_Config *UartConfig;

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
int CUart_Init()
{
    int status;

    UartConfig = XUartPs_LookupConfig(XPAR_XUARTPS_0_BASEADDR);

    status = XUartPs_CfgInitialize(&Uart, UartConfig, UartConfig->BaseAddress);
    if (status != XST_SUCCESS) return XST_FAILURE;

    XUartPs_SetBaudRate(&Uart, 115200);

    // Clear screen POSIX
    print("\033[2J\r\n");

    return XST_SUCCESS;
}
