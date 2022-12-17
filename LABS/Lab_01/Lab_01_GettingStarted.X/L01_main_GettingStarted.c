/*
 * File:   L01\_main\_GettingStarted.c
 * Author: blero the hero ;-)
 *
 * Created on 21. August 2019, 16:49
 */

/*  1. Run example as it is. 
 *  2. Run example with two breakpoints on lines 
 *     line 52 (LATBbits.LATB3 = 0; // LED 2 on) and 
 *     line 59 (LATBbits.LATB5 = !LATBbits.LATB5; // toggle LED 4) */

#include <xc.h>                /* XC8 Compiler Header, provides processor specific information e.g. register names */

// configuration of the device

// CONFIG1H
#pragma config FOSC = INTIO67 // Oscillator Selection bits ( Internal oscillator block )
// CONFIG2H
#pragma config WDTEN = OFF // Watchdog Timer Enable bits ( Watch dog timer disabled )
// Watchdog will be explainded later
// CONFIG3H
#pragma config PBADEN = OFF // PORTB A/D Enable bit (PORTB <5:0 > pins are configured as digital )
// replaces ANSELB = 0; within source code
// CONFIG4L
#pragma config LVP = OFF // Single - Supply ICSP Enable bit (Single - Supply ICSP disabled )


//--- P R I V A T E   P R O T O T Y P E S --------------------------------------
void __init(void); // only one function is given in this small project

//##############################################################################
// Function:        void main(void)
//					called from the XC8 startup code
//##############################################################################

void main() {
    unsigned char button;

    // call function for initialization
    __init();
       
    /* Press TL and TR and check the LEDs. */

    /* main loop, never left */
    while (1) {

        button = PORTBbits.RB2; // Read button TL

        if (button == 0) { // TL pressed?
            LATBbits.LATB3 = 0; // LED 2 on
        } else { // TL not pressed
            LATBbits.LATB3 = 1; // LED 2 off
        }

        if (PORTBbits.RB4 == 0) { // TR pressed?
            while (PORTBbits.RB4 == 0); // TR still pressed?
            LATBbits.LATB5 = !LATBbits.LATB5; // toggle LED 4 
        }
        Nop(); // Do nothing, a breakpoint may be placed here
    }
}

void __init() {
     /* Configuration of oscillator */
    OSCCON = 0x50; // 500 kHz internal clock, see datasheet 2.2 Oscillator Control

    /* Configuration of input/output pins */
    ANSELB=0; // Pin digital
    TRISB = 0b00010110; // see datasheet 10.0 I/O PORTS
    LATB = 0b00000000; // see datasheet 10.0 I/O PORTS 
}
// last line has to be empty