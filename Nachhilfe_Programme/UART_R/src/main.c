#include <xc.h>
#include <pic18f25k22.h>
#include "../headers/config.h"
#include "../headers/lib.h"
#include "../headers/UART_R.h"

/**
 * UART_R
 * @brief Program the Microcontroller to be a Receiver:
 *
 */

unsigned char Data; // A Global Variable stores the Received Data

void main(void)
{
    __init();
    UATR_R_Init(); // Data Reception in the ISR
    // PORTA is output
    TRISA = 0;
    LATA = 0;

    while (1)
    {
        LATA = Data; // Display Received Data (LEDs)
    }
}

void __interrupt() high_isr()
{
    if (RC1IE && RC1IF)
    {
        Data = RCREG1;
        LATA0 = 1;

        RC1IF = 0;
    }
    
}