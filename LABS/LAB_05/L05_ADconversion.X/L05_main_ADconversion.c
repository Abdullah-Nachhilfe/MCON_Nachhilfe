/*
 * File:   L05_main_ADconversion.c
 * Author: Abdullah
 *
 * Created on 22. November 2022, 18:05
 */

//##############################################################################
//  filename:      L05_main_ADconversion.c
//            
//  Program to introduce ADC
//
//##############################################################################
#include <xc.h> /* XC8 Compiler Header, provides processor specific information e.g. register names */

// configuration of the device
// CONFIG1H
#pragma config FOSC = INTIO67 // Oscillator Selection bits ( Internal oscillator block )
// CONFIG2H
#pragma config WDTEN = OFF // Watchdog Timer Enable bits ( Watch dog timer disabled )
// CONFIG3H
#pragma config PBADEN = OFF // PORTB A/D Enable bit (PORTB <5:0 > pins are configured as digital )
// CONFIG4L
#pragma config LVP = OFF // Single - Supply ICSP Enable bit (Single - Supply ICSP disabled )



//--- P R I V A T E   P R O T O T Y P E S --------------------------------------
void __init(void);

void main(void) {        
    __init();
    
    char resultBits; 
    while (1) {
        ADCON0bits.GO = 1; // start sampling and conversion
        while (ADCON0bits.NOT_DONE); // wait until finished
        
        resultBits = ADRESH; // read out result of ADC
        // TODO: you need to adjust the bits to match the desired output here...
        LATB = resultBits;
    }
}


void __init(void) {
    OSCCON = 0x50; // 4 MHz internal clock

    /***************************************************/
    // configure pins
    /***************************************************/
    TRISAbits.TRISA0 = 1; // Poti to input
    ANSELA = 1; // Port A0 to analog, all others digital
        
    ANSELB = ANSELC = 0x00; // all pins of port B and C digital I/O 
    TRISB &= 0b11000011; // all LEDs output, other directions unchanged
    
    /***************************************************/
    // TODO: Configure AD module (measurement time 0.05 ms @ 4MHz Fosz)
    /***************************************************/
    
    ADCON0bits.CHS = 0b00000; // select poti PORTA0
    ADCON1bits.PVCFG = 0b00; // upper limit 5V (Vdd)
    ADCON1bits.NVCFG = 0b00; // lower limit 0V (Vss)
    ADCON2bits.ACQT = 0b010; // 4 Tad = 8 us
    ADCON2bits.ADCS = 0b001; // Tad = 1/(Fosc/8) = 1/(4 MHz /8) = 2 us
    ADCON2bits.ADFM = 0; // left just => use only 8 bit
    ADCON0bits.ADON = 1;    // AD Module on!! Don't forget
    
    // AD Conversion with 10HZ With CCP5
    
    // CCP5 Config for Special event in Compare Mode
    //CCP5CONbits.CCP5M = 0b1011; // starting A/D conversion, ADON is Set
    //CCPR5 = 50000; // Triggers interrupt on Match with TMR1 every 100ms
    
    // Select timer 1 for this operation
   // CCPTMRS1bits.C5TSEL = 0b00;
    // Timer1 Config
    //T1CONbits.TMR1CS = 0b00; // CLK is Fosc/4
    //T1CONbits.T1CKPS = 0b01; // PS = 1:2
    //T1CONbits.TMR1ON = 1;
    
    // Interrupts Config
    //ADIE = 1; // Enable AD-Interrupt
    //ADIF = 0; // The ADIF bit is set at the completion of every conversion
    //PEIE = 1;
    //GIE = 1;
    
}

// The ADIF bit is set at the completion of every conversion
/*
void __interrupt() ISR(){
    
    if (ADIE && ADIF){
        
        ADIF = 0;
        resultBits = ADRESH;
        LATB = resultBits;
        
    } 
    
    
}
 */