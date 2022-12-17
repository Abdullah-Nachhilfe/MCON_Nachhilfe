#include <xc.h>
#include <pic18f25k22.h>
#include "../headers/config.h"
#include "../headers/lib.h"
#include "../headers/UART_T.h"
#define _XTAL_FREQ 4000000

/**
 * UART_T
 * @brief Program the Microcontroller to be a Transmitter:
 * 
 */
#define UP PORTCbits.RC0
#define DOWN PORTCbits.RC1
#define Send PORTCbits.RC2

void main(void){
    // This Program is a simple Test for Transmission. 
    unsigned char Data = 0; // This Data will be transmitted
    // Output Pins for LEDs
    TRISA = 0;
    LATA = 0;

    // Input Pins for Push Buttons
    TRISC0 = 1; 
    TRISC1 = 1;
    TRISC2 = 1;
    TRISC = 1;

    __init();
    UATR_T_Init();

    while (1)
    {
        if(UP){
            Data ++;
            __delay_ms(250);
        }
        if (DOWN)
        {
            Data--;
            __delay_ms(250);
        }
        if (Send)
        {
            UART_Send_Data(Data);
            __delay_ms(250);
        }

        LATA = Data; // Display Current Data on PORTA, i.e. LEDs
        
    }
    

}