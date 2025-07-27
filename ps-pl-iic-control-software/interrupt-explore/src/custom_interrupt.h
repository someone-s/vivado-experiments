/******************************************************************************
* Copyright (C) 202X.
* SPDX-License-Identifier: X
******************************************************************************/
/*
 * custom_interrupt.h: simple test application
 */

#ifndef CUSTOM_INTERRUPT_H
#define CUSTOM_INTERRUPT_H

#include <xscugic.h>

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */

#define INTC_TranslateIrqF2pToActual(logicalid) (((logicalid) < 8) ? (61 + (logicalid)) : (84 + (logicalid)))


/************************** Function Prototypes ******************************/
int BeginInitInterruptController(XScuGic *XScuGicInstancePtr);
int EndInitInterruptController(XScuGic *XScuGicInstancePtr);

#endif