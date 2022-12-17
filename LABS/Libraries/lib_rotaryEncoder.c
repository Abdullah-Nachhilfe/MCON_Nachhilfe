#include "lib_rotaryEncoder.h"
#include "uCQ_2013.h"

struct StructFlags flags;

void EncoderLEDs(void) {
    unsigned char dummy = 0b00000100; // LEDs RB2..RB5
    
    // test loop for encoder
    while (!mGET_ENC_BTN()) { // stay here until encoder button is pressed
        if (flags.encUp) {
            dummy = dummy << 1;
            if (dummy > 0b00100000) dummy = 0b00000100;
            LATB = ~dummy;
            flags.encUp = 0;
        }
        if (flags.encDown) {
            dummy = dummy >> 1;
            if (dummy < 0b00000100) dummy = 0b00100000;
            LATB = ~dummy;
            flags.encDown = 0;
        }
    }
}

void EncoderADC(void) {
    static unsigned char ADCS = 0b110, ACQT = 0b111;
    static char sel=1;

    // adjust timings of ADC 
    if (flags.encUp) {
        if (sel == 0) { // increase ADCS (conversion clock)
            ADCS++;
            if ((ADCS & 0b11) == 0b11) ADCS++; // Do not use the configs FRC 
            ADCON2bits.ADCS = ADCS & 0b111; // use only lower 3 bits;
        } else { // increase aquisition time
            ACQT++;
            ADCON2bits.ACQT = ACQT & 0b00000111; // nur untere 3 bit
        }
        flags.encUp = 0; // clear flag
    }
    if (flags.encDown) {
        if (sel == 0) { // decrease ADCS (conversion clock)
            ADCS--; 
            if ((ADCS & 0b11) == 0b11) ADCS--; // Do not use the configs FRC
            ADCON2bits.ADCS = ADCS & 0b111; // use only lower 3 bits;
        } else { // decrease aquisition time
            ACQT--;
            ADCON2bits.ACQT = ACQT & 0b00000111; // nur untere 3 bit
        }
        flags.encDown = 0; // clear flag
    }
    
    // toggle between ADCS and ACQT selection
    if mGET_ENC_BTN() { // encoder button pressed
        while(mGET_ENC_BTN());
        sel = sel ^ 1;
    }
}

