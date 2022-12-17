/*
 * File:   main.c
 * Author: mmunz
 *
 * Created on 24. November 2022, 13:29
 */


#include <xc.h>
#include "../../Libraries/LCD_library.h"
#include "LCD_config.h"
#include "../../Libraries/GLCD_library.h"
#include "GLCD_config.h"

void __init(void);
short ADCresult; // global
char flag;
void main(void) {

    __init();
    GLCD_Init(); // display is initialized
    GLCD_Value2Out(0,0,10);

    while (1) {
        
        // Vref+/2^10 = 0.00488 * 1000 = 4,88 mv
        // ADCresult * 4,88mv = result in mv
        
        if(flag)
        {
            
        //LCD_ValueOut_00(0, 0, ADCresult * 4.88 , 4);
        
  
        
        flag = 0;
        
        }

    }


}

void __init(void) {
    OSCCON = 0x50; // 4 MHz oscillator


    /***************************************************/
    // configure pins
    /***************************************************/
    TRISAbits.TRISA0 = 1; // Poti to input
    ANSELA = 0b00000001; // Port A0 to analog, all others digital        
    ANSELB = 0x00; // all pins of port B and C digital I/O 
    TRISB &= 0b11000011; // all LEDs output, other directions unchanged
    LATB = 0xFF; // all LEDs off

    /***************************************************/
    // Configure AD module (measurement time 0.05 ms @ 4MHz Fosz)
    /***************************************************/
    ADCON0bits.CHS = 0b0; // select poti PORTA0
    ADCON1bits.PVCFG = 0b00; // upper limit 3.25V (Vdd)
    ADCON1bits.NVCFG = 0b00; // lower limit 0V (Vss)
    ADCON2bits.ACQT = 0b010; // 4 Tad = 8 us
    ADCON2bits.ADCS = 0b001; // Tad = 1/(Fosc/8) = 1/(4 MHz /8) = 2 us
    ADCON2bits.ADFM = 1; // right just => use all bits


    ADCON1bits.TRIGSEL = 0; //select special event trigger from CCP5
    PIR1bits.ADIF = 0; // reset interrupt flag
    PIE1bits.ADIE = 1; // enable interrupts for adc
    // enable ADC
    ADCON0bits.ADON = 1; // AD Module on

    // CCP5 
    CCPTMRS1bits.C5TSEL = 0; // timer <-> ccp module (CCP5 / TMR1)
    CCPR5 = 0xFFFF;
    CCP5CONbits.CCP5M = 0b1011; // Compare Mode with Special Event Trigger   

    // Timer1
    T1CONbits.TMR1CS = 0; // Timer1 clock source is instruction clock (FOSC/4)
    T1CONbits.T1CKPS = 0b11; // PS 1:8

    TMR1H = 0;
    TMR1L = 0; // start value for timer set to zero      
    T1GCONbits.TMR1GE = 0; // Timer1/ counts regardless of gate function
    T1CONbits.TMR1ON = 1; // Timer on

    // enable general interrupts
    INTCONbits.PEIE = 1;
    INTCONbits.TMR0IF = 0; // clear overflow bit of timer 0

    // interrupts are still deactivated! (NOW ACTIVATED!)
    INTCONbits.GIE = 1;

}

void __interrupt(high_priority) high_isr(void) {

    if (PIE1bits.ADIE && PIR1bits.ADIF) {
        
        if(ADCresult != ((ADRESH << 8) + ADRESL))
        {
   
        ADCresult = (ADRESH << 8) + ADRESL; // ADC Result in 10-bit
        flag = 1;
        
        }
        
        PIR1bits.ADIF = 0;
    }



}