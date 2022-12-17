/* 
 * File:   L08_lib_rotaryEncoder.h
 * Author: VSK
 *
 * Created on 22. September 2015, 12:44
 */

#ifndef L08_LIB_ROTARYENCODER_H
#define	L08_LIB_ROTARYENCODER_H

// Definition of a structure
struct StructFlags{
        unsigned encUp      : 1;
        unsigned encDown    : 1;
        unsigned newADC     : 1;
        unsigned newCapture : 1;
        unsigned newSec     : 1;
        unsigned bit5 : 1;
        unsigned bit6 : 1;
        unsigned bit7 : 1;
};

/* Declaration of the variabl flags as extern, so that it can be used in all c-files that include the header L08_lib_rotaryEncoder.h */
extern struct StructFlags flags;

/* Declaration of the prototypes for the functions, so that they can be used in any c file that includes the L08_lib_rotaryEncoder.h header */
extern void EncoderLEDs(void);      // Encoder rotates LEDs
extern void EncoderADC(void);       // Encoder adjusts different timings for the ADC

#endif	/* L08_LIB_ROTARYENCODER_H */

