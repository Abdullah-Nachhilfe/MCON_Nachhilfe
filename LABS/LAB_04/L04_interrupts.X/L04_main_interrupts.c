#include <xc.h>
/* XC8 Compiler Header, provides processor specific information e.g. register names */

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

char LED2_flag = 0;
char LED4_flag = 0;
char x = 0;

void main() {
    // call function for initialization
    __init();

    /* main loop, never left */
    while (1) {
        // Do nothing
    }
}

void __init() {

    /* Configuration of oscillator */
    OSCTUNEbits.INTSRC = 1; // 31.25 kHz device clock derived from the MFINTOSC or HFINTOSC source (this needs a little more power but is more accurate)
    OSCCONbits.IRCF = 0; // 31.25 khz internal clock, very slow!!

    /* Configuration of input/output pins */
    LATB = 255; // all LEDs off

    TRISB = 0b00010100; // all pins input

    // set up timer 0
    T0CONbits.T0CS = 0; // clock source is instruction clock Fosc/4 = 31.5 kHz / 4
    T0CONbits.PSA = 0; // pres-scaler assigned
    T0CONbits.T0PS = 0b001; // prescaler 1:4 (4 times slower)
    T0CONbits.T08BIT = 1; // 8 bit, counts till 255
    TMR0H = 0; // always write Highbyte first!
    TMR0L = 0; // start value for timer set to zero
    T0CONbits.TMR0ON = 1; // Timer 0 on

    // setup timer 1
    T1CONbits.TMR1CS = 0; // Timer1 clock source is instruction clock (FOSC/4)
    T1CONbits.T1CKPS = 0; // 1:8 Prescale value
    TMR1H = 0; // always write Highbyte first!
    TMR1L = 0; // start value for timer set to zero
    T1CONbits.TMR1ON = 1; // Timer on
    T1GCONbits.TMR1GE = 0; // Timer1/ counts regardless of gate function

    // setup capture and compare module CCP1
    CCP1CONbits.CCP1M = 0b1011; // Compare Mode with Special Event Trigger, CCP1IF is set
    CCPTMRS0bits.C1TSEL = 0; // timer <-> ccp module (CCP1 / TMR1)
    CCPR1 = 4096; // compare value for setting CCP1IF

    // clear overflow flag bits, called IF
    INTCONbits.TMR0IF = 0; // clear overflow bit of timer 0
    PIR1bits.TMR1IF = 0; // clear overflow bit of timer 1
    PIR1bits.CCP1IF = 0; // clear match of compare module CCP1

    INTCONbits.TMR0IE = 1;
    PIE1bits.TMR1IE = 1;
    PIE1bits.CCP1IE = 1;
    INTCONbits.PEIE = 1;
    INTCONbits.GIE = 1;

    // config RB2 Interrupt
    INT2IE = 1;
    INT2IF = 0;
    INTEDG2 = 1;
    // config RB4 interrupt
    RBIE = 1;
    RBIF = 0;
    IOCB4 = 1;
}

void __interrupt(high_priority) high_isr(void) {


    /*
     * Pressing the TL Button triggers an interrupt (INT2IF), which controls,
     * if the LED2 Blinks or not
     * 
     */
    if (INT2IE && INT2IF) {

        INT2IF = 0;

        LED2_flag ^= 1;
    }
    // Checks if the Timer 0 has overflown
    if (TMR0IE && TMR0IF) {

        INTCONbits.TMR0IF = 0; // clear interruptflag

        // Checks if the Flag for the Blinking of LED2 is set.
        if (LED2_flag) {
            LATBbits.LATB3 ^= 1; // toggle LED 2
        }

    }

    /*
     * Pressing the TR Button triggers an interrupt (RBIF), which controls,
     * if the LED4 Blinks or not
     * 
     */
    if (RBIE && RBIF) {

        x = PORTBbits.RB4;

        if (x) {

            LED4_flag ^= 1;
        }

        RBIF = 0;
    }
    // Checks if a Match between CCPR1 and Timer1 has happened.
    if (CCP1IF && CCP1IE) {

        PIR1bits.CCP1IF = 0; // reset overflow flag


        // Checks if the Flag for the Blinking of LED4 is set.
        if (LED4_flag) {
            LATBbits.LATB5 ^= 1; // toggle LED 4
        }
    }
}

// last line has to be empty