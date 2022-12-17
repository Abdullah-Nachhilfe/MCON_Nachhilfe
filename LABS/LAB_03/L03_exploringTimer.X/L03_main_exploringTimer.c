/*
 * File:   L03_main_exploringTimer.c
 * Author: Abdullah
 *
 * Created on 13. November 2022, 15:19
 */

// CONFIG1H
#pragma config FOSC = INTIO67 // Oscillator Selection bits ( Internal oscillator block )
// CONFIG2H
#pragma config WDTEN = OFF // Watchdog Timer Enable bits ( Watch dog timer disabled )
// Watchdog will be explained later
// CONFIG3H
#pragma config PBADEN = OFF // PORTB A/D Enable bit (PORTB <5:0 > pins are configured as digital )
// replaces ANSELB = 0; within source code
// CONFIG4L
#pragma config LVP = OFF // Single - Supply ICSP Enable bit (Single - Supply ICSP disabled )


#include <xc.h>

void __init(void);

void main(void) {

    __init();

    /* main loop , never left */
    while (1) {
        
        // 0000 0001 >> 2 & 0000 0001;
        // 0000 0100 & 0000 0001 = 0
        // 1 & 0 = 0
        // 0 & 0 = 0
        // 1 & 1 = 1

        

        // LED 1
        LATBbits.LATB2 = (TMR0 >> 2) & 0b00000001; // LED 1 blinks , when TMR0 is running
        
        // LED 2
        if (INTCONbits.TMR0IF) { // overflow Timer 0
            LATBbits.LATB3 ^= 1; // toggle LED 2 , TMR0 overflown
            TMR0 = 255-122;
            TMR0IF = 0;
            //timeT0++; // This is for debugging purposes , to see how often the LED blinked
        }

        // LED 3
        if (PIR1bits . TMR1IF) {
            LATBbits . LATB4 ^= 1; // toggle LED 3 , TMR1 overflown
            TMR1IF = 0;
            //timeT1++; // This is for debugging purposes , to see how often the LED blinked
        }

        // LED 4
        if (PIR1bits . CCP1IF) {
            PIR1bits.CCP1IF = 0; // reset overflow flag
            LATBbits.LATB5 ^= 1; // toggle LED 4 , CCP1 match occured
            // timeT1 ++; // This is for debugging purposes , to see how often the LED blinked
        }
    }


}

void __init() {
    /* Configuration of oscillator */
    // 31.25 kHz device clock derived from the MFINTOSC or HFINTOSC source (this needs a little more power but is more accurate )
    OSCTUNEbits.INTSRC = 1;
    OSCCONbits.IRCF = 0; // 31.25 khz internal clock , very slow but low power !!

    /* Configuration of input / output pins */
    TRISB = 0b00000000; // all LEDs output
    LATB = 255; // all LEDs off

    // set up timer 0
    T0CONbits .T0CS = 0; // clock source is instruction clock Fosc /4 = 31.5 kHz / 4
    T0CONbits.PSA = 0; // pres - scaler assigned
    T0CONbits.T0PS = 0b100; // prescaler 1:256 (256 times slower )
    T0CONbits.T08BIT = 1; // 8 bit , counts till 255
    TMR0H = 0; // always write Highbyte first !
    TMR0L = 0;
    TMR0 = 255-122;// start value for timer set to zero
    T0CONbits.TMR0ON = 1; // Timer 0 on


    // setup timer 1
    T1CONbits.TMR1CS = 0; // Timer1 clock source is instruction clock ( FOSC /4)
    T1CONbits.T1CKPS = 1; // 2^1 -> 1:2 Prescale value
    TMR1H = 0; // always write Highbyte first !
    TMR1L = 0; // start value for timer set to zero
    T1CONbits.TMR1ON = 1; // Timer on
    T1GCONbits.TMR1GE = 0; // Timer1 / counts regardless of gate function

     // setup capture and compare module CCP1
     CCP1CONbits . CCP1M = 0b1011 ; // Compare Mode with Special Event Trigger , CCP1IF is set
     CCPTMRS0bits . C1TSEL = 0; // timer <-> ccp module ( CCP1 / TMR1 )
    CCPR1 = 1953; // compare value for setting CCP1IF

    // clear overflow flag bits , called IF
    INTCONbits.TMR0IF = 0; // clear overflow bit of timer 0
    PIR1bits.TMR1IF = 0; // clear overflow bit of timer 1
    PIR1bits.CCP1IF = 0; // clear match of compare module CCP1
}
/**
 * Answer to L.3.4
 *       CS               PS      8/16 bit        count limit     time till overflow @Fosc = 31,25kHz
 * TMR0  Internal CLK     1:256   8 bit           255                 8,35s
 * TMR1  Instruction CLK  1:2     16 bit          65535               16,77s
 * 
 * 
 * 
 *      theoretical T/2 | calculated T/2 | measured T/2
 * 
 * TMR0          500ms  |   499,7ms      |
 *  
 * TMR1 and CCP1 500ms  |   499,9ms      |
 
 */