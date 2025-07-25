#include "xgpio.h"

XGpio_Config XGpio_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x41200000, /* reg */
		0x1, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0x4020, /* interrupts */
		0xf8f01000, /* interrupt-parent */
		0x6 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x41230000, /* reg */
		0x1, /* xlnx,interrupt-present */
		0x0, /* xlnx,is-dual */
		0x401d, /* interrupts */
		0xf8f01000, /* interrupt-parent */
		0x8 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x41210000, /* reg */
		0x0, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		0x6 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x41220000, /* reg */
		0x1, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0x4021, /* interrupts */
		0xf8f01000, /* interrupt-parent */
		0x2 /* xlnx,gpio-width */
	},
	 {
		 NULL
	}
};