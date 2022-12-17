/*
 * File:   main.c
 * Author: Abdullah
 *
 * Created on 9. Oktober 2022, 16:13
 */


#include <xc.h>
#include "config.h"

void main(void) {
    
    TRISBbits.TRISB2 = 1;
    TRISBbits.TRISB3 = 0;
    PORTBbits.RB3 = 0;
    
    while(1){
        
        if(PORTBbits.RB2 == 1) {
            PORTBbits.RB3 = 1;
        }
        else{
            PORTBbits.RB3 = 0;
        
        }
        
    }
    
    return;
}
