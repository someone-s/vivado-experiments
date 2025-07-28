
/******************************************************************************
 * Copyright (C) 202X.
 * SPDX-License-Identifier: X
 ******************************************************************************/
/*
 * custom_ssd1308.c: simple test application
 */

#include "custom_iic.h"
#include "custom_ssd1308.h"
#include <sleep.h>
#include <stdint.h>
#include <xiic.h>
#include <xil_types.h>
#include <xstatus.h>

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */

// General I2C defines
//
#define SSD1308_DEVICE_ADDRESS 0x3C
// Control bytes
#define SSD1308_CONTROL_COMMAND 0x80
#define SSD1308_CONTROL_DATA 0x40
//
// Address bytes
#define SSD1308_MEMORY_MODE_COMMAND 0x20
#define SSD1308_MEMCONFIG_HORIZONTAL 0b00
#define SSD1308_MEMCONFIG_VERTICAL 0b01
#define SSD1308_MEMCONFIG_PAGE 0b10
//
#define SSD1308_RANGE_COLUMN_COMMAND 0x21
#define SSD1308_RANGE_PAGE_COMMAND 0x22
//
// Timing bytes
#define SSD1308_MULTIPLEX_COMMAND 0xA8
#define SSD1308_MULCONFIG_DEFAULT 63
//
#define SSD1308_CLOCK_DIV_OSC_COMMAND 0xD5
#define SSD1308_DOCONFIG_DIV_BIT 3
#define SSD1308_DOCONFIG_DIV_LENGTH 4
#define SSD1308_DOCONFIG_OSC_BIT 7
#define SSD1308_DOCONFIG_OSC_LENGTH 4
#define SSD1308_DOCONFIG(Div, Osc)                                             \
    (Div << (SSD1308_DOCONFIG_DIV_BIT - SSD1308_DOCONFIG_DIV_LENGTH + 1) |     \
     Osc << (SSD1308_DOCONFIG_OSC_BIT - SSD1308_DOCONFIG_OSC_LENGTH + 1))

// Charge Pump bytes
#define SSD1308_Pump_Set_Charge_Reg 0x8D
#define SSD1308_Pump_Set_Charge_Off 0x10
#define SSD1308_Pump_Set_Charge_On 0x14

// Fundemental bytes
#define SSD1308_ENTIRE_RAM_COMMAND 0xA4
#define SSD1308_ENTIRE_ON_COMMAND 0xA5
//
#define SSD1308_CONTRAST_COMMAND 0x81
//
#define SSD1308_COLOR_NORMAL_COMMAND 0xA6
#define SSD1308_COLOR_INVERSE_COMMAND 0xA7

// Hardware bytes
#define SSD1308_POWER_ON_COMMAND 0xAF
#define SSD1308_POWER_OFF_COMMAND 0xAE
//
#define SSD1308_PINCFG_COMMAND 0xDA
#define SSD1308_PCONFIG_BASE 0b00000010
#define SSD1308_PCONFIG_SEQUENTIAL_BIT 4
#define SSD1308_PCONFIG_LRREMAP_BIT 5
#define SSD1308_PCONFIG(Seq, Remap)                                            \
    (SSD1308_PCONFIG_BASE |                                                    \
     (Seq << SSD1308_PCONFIG_SEQUENTIAL_BIT) |                                 \
     (Remap << SSD1308_PCONFIG_LRREMAP_BIT))
//
#define SSD1308_SCANDIR_NORMAL_COMMAND 0xC0
#define SSD1308_SCANDIR_REMAP_COMMAND 0xC8
//
#define SSD1308_REMAP_OFF_COMMAND 0xA0
#define SSD1308_REMAP_ON_COMMAND 0xA1
//
#define SSD1308_OFFSET_COMMAND 0xD3
#define SSD1308_OCCONFIG_BIT 5
#define SSD1308_OCCONFIG_LENGTH 6
//
#define SSD1308_STARTLINE_COMMAND(line) (0x40 + line)

/************************** Function Prototypes ******************************/

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
int CSSD1308_Init(XIic *InstancePtr) {
  int Status;

  u8 setup[] = {
                // Set multiplex ratio to 0x3f
                SSD1308_CONTROL_COMMAND, SSD1308_MULTIPLEX_COMMAND,
                SSD1308_CONTROL_COMMAND, SSD1308_MULCONFIG_DEFAULT,
                // Set display offset
                SSD1308_CONTROL_COMMAND, SSD1308_OFFSET_COMMAND,
                SSD1308_CONTROL_COMMAND, 0,
                // Set start line
                SSD1308_CONTROL_COMMAND, SSD1308_STARTLINE_COMMAND(0),
                // Set remap
                SSD1308_CONTROL_COMMAND, SSD1308_REMAP_ON_COMMAND,
                // Set COM scan dir
                SSD1308_CONTROL_COMMAND, SSD1308_SCANDIR_NORMAL_COMMAND,
                // Set COM pin config
                SSD1308_CONTROL_COMMAND, SSD1308_PINCFG_COMMAND,
                SSD1308_CONTROL_COMMAND, SSD1308_PCONFIG(TRUE, FALSE),
                // Set contrast
                SSD1308_CONTROL_COMMAND, SSD1308_CONTRAST_COMMAND,
                SSD1308_CONTROL_COMMAND, 127,
                // Set entire display on
                SSD1308_CONTROL_COMMAND, SSD1308_ENTIRE_RAM_COMMAND,
                // Set normal display
                SSD1308_CONTROL_COMMAND, SSD1308_COLOR_NORMAL_COMMAND,
                // Set oscillator frequency
                SSD1308_CONTROL_COMMAND, SSD1308_CLOCK_DIV_OSC_COMMAND,
                SSD1308_CONTROL_COMMAND, SSD1308_DOCONFIG(0, 8),
                // Set display on
                SSD1308_CONTROL_COMMAND, SSD1308_POWER_ON_COMMAND,
                // Set horizontal address mode
                SSD1308_CONTROL_COMMAND, SSD1308_MEMORY_MODE_COMMAND,
                SSD1308_CONTROL_COMMAND, SSD1308_MEMCONFIG_VERTICAL};

    Status = CIic_SyncWriteBytes(InstancePtr, 
        SSD1308_DEVICE_ADDRESS, setup, sizeof(setup) / sizeof(u8));
    if (Status != XST_SUCCESS) return XST_FAILURE;

    return XST_SUCCESS;
}