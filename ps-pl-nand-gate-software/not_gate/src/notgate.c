#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xgpio.h"
#include "xparameters.h"


int main()
{
    init_platform();

    XGpio input, output;

    // Initialize input
    // Channel = 1: 1 of 1 (can be 1 or 2)
    // Mask = 0b1; mask for 1 bit wide IO, where 1 bit marks channel input, 0 bit marks channel output
    XGpio_Initialize(&input, XPAR_AXI_GPIO_0_BASEADDR);
    XGpio_SetDataDirection(&input, 1, 0b1);

    // Initialize output
    // Channel = 1: 1 of 1 (can be 1 or 2)
    // Mask = 0b0; mask for 1 bit wide IO, where 1 bit marks channel input, 0 bit marks channel output
    XGpio_Initialize(&output, XPAR_AXI_GPIO_1_BASEADDR);
    XGpio_SetDataDirection(&output, 1, 0b0);

    while (1)
    {
        // Read input value
        int val = XGpio_DiscreteRead(&input, 1);
        // Write opposite output value
        XGpio_DiscreteWrite(&output, 1, 1 - val);
    }

    print("Not-gate running\n\r");

    cleanup_platform();
    
    return 0;
}
