subtitle "Microchip MPLAB XC8 C Compiler v2.36 (Free license) build 20220127204148 Og9 "

pagewidth 120

	opt flic

	processor	18F25K22
include "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\18f25k22.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 150 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 239 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 304 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 386 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 483 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 488 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 608 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 702 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 847 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 852 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 1001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 1006 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1175 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1246 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1298 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1372 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1483 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1694 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1714 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1734 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1805 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1825 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1909 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1916 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1936 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1956 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 2020 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 2027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2047 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2143 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2148 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2385 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2455 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2537 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2544 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2584 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2616 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2678 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2857 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2862 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3278 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3298 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3360 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3430 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4095 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4165 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4190 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4447 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4735 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4740 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 4987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 4992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5030 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5063 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5068 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5101 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5139 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5144 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5261 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5266 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5541 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5546 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 5963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 5995 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6177 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6468 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6841 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7359 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7471 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7583 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7588 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 7805 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 7810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8032 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8249 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8270 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8345 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8620 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 8697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 8774 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 8851 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 8937 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9023 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9109 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9441 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9461 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9481 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9556 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10012 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10382 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10387 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10391 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10460 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10469 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10538 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10543 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10547 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10616 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10621 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 10694 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 10802 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 10809 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 10829 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 10849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 10944 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 10949 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11580 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11585 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11589 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11593 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12259 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12404 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12475 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12495 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12515 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 12597 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 12604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 12624 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 12644 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 12715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 12783 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 12908 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 12915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 12935 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 12955 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 12960 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13314 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 13547 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 13552 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14177 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14182 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 14431 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 14436 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 14485 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 14490 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 14623 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 14745 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 14840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 14953 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 14960 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 14980 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15000 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15133 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15161 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15218 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 15301 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 15371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 15378 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 15398 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 15418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 15489 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 15496 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 15516 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 15523 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 15543 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 15563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 15583 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 15603 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 15623 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 15630 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 15637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 15657 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 15664 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 15684 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 15704 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 15724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 15744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 15764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 15802 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 15809 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 15829 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 15836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 15856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 15876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 15896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 15916 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 15936 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16098 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16215 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16222 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16242 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16262 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 16284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 16291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 16311 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 16331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 16362 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 16369 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PC equ 0FF9h ;# 
# 16376 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 16396 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 16416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 16423 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 16529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 16536 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 16556 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 16576 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 150 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 239 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 304 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 386 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 483 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 488 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 608 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 702 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 847 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 852 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 1001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 1006 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1175 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1246 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1298 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1372 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1483 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1694 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1714 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1734 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1805 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1825 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1909 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1916 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1936 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1956 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 2020 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 2027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2047 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2143 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2148 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2385 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2455 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2537 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2544 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2584 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2616 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2678 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2857 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2862 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3278 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3298 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3360 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3430 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4095 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4165 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4190 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4447 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4735 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4740 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 4987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 4992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5030 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5063 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5068 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5101 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5139 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5144 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5261 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5266 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5541 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5546 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 5963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 5995 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6177 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6468 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6841 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7359 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7471 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7583 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7588 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 7805 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 7810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8032 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8249 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8270 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8345 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8620 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 8697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 8774 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 8851 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 8937 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9023 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9109 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9441 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9461 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9481 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9556 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10012 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10382 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10387 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10391 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10460 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10469 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10538 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10543 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10547 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10616 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10621 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 10694 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 10802 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 10809 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 10829 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 10849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 10944 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 10949 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11580 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11585 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11589 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11593 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12259 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12404 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12475 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12495 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12515 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 12597 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 12604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 12624 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 12644 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 12715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 12783 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 12908 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 12915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 12935 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 12955 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 12960 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13314 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 13547 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 13552 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14177 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14182 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 14431 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 14436 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 14485 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 14490 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 14623 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 14745 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 14840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 14953 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 14960 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 14980 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15000 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15133 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15161 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15218 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 15301 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 15371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 15378 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 15398 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 15418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 15489 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 15496 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 15516 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 15523 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 15543 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 15563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 15583 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 15603 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 15623 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 15630 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 15637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 15657 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 15664 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 15684 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 15704 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 15724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 15744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 15764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 15802 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 15809 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 15829 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 15836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 15856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 15876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 15896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 15916 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 15936 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16098 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16215 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16222 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16242 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16262 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 16284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 16291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 16311 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 16331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 16362 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 16369 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PC equ 0FF9h ;# 
# 16376 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 16396 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 16416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 16423 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 16529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 16536 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 16556 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 16576 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ANSELA equ 0F38h ;# 
# 100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ANSELB equ 0F39h ;# 
# 150 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ANSELC equ 0F3Ah ;# 
# 201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PMD2 equ 0F3Dh ;# 
# 239 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PMD1 equ 0F3Eh ;# 
# 304 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PMD0 equ 0F3Fh ;# 
# 381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
VREFCON2 equ 0F40h ;# 
# 386 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
DACCON1 equ 0F40h ;# 
# 483 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
VREFCON1 equ 0F41h ;# 
# 488 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
DACCON0 equ 0F41h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
VREFCON0 equ 0F42h ;# 
# 608 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
FVRCON equ 0F42h ;# 
# 697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CTMUICON equ 0F43h ;# 
# 702 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CTMUICONH equ 0F43h ;# 
# 847 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CTMUCONL equ 0F44h ;# 
# 852 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CTMUCON1 equ 0F44h ;# 
# 1001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CTMUCONH equ 0F45h ;# 
# 1006 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CTMUCON0 equ 0F45h ;# 
# 1113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SRCON1 equ 0F46h ;# 
# 1175 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SRCON0 equ 0F47h ;# 
# 1246 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1298 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1372 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
T6CON equ 0F4Ah ;# 
# 1443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PR6 equ 0F4Bh ;# 
# 1463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR6 equ 0F4Ch ;# 
# 1483 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
T5GCON equ 0F4Dh ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
T5CON equ 0F4Eh ;# 
# 1687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR5 equ 0F4Fh ;# 
# 1694 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR5L equ 0F4Fh ;# 
# 1714 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR5H equ 0F50h ;# 
# 1734 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
T4CON equ 0F51h ;# 
# 1805 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PR4 equ 0F52h ;# 
# 1825 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR4 equ 0F53h ;# 
# 1845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCP5CON equ 0F54h ;# 
# 1909 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR5 equ 0F55h ;# 
# 1916 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR5L equ 0F55h ;# 
# 1936 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR5H equ 0F56h ;# 
# 1956 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCP4CON equ 0F57h ;# 
# 2020 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR4 equ 0F58h ;# 
# 2027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR4L equ 0F58h ;# 
# 2047 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR4H equ 0F59h ;# 
# 2067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2143 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2148 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCP3AS equ 0F5Bh ;# 
# 2385 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PWM3CON equ 0F5Ch ;# 
# 2455 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCP3CON equ 0F5Dh ;# 
# 2537 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR3 equ 0F5Eh ;# 
# 2544 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR3L equ 0F5Eh ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR3H equ 0F5Fh ;# 
# 2584 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SLRCON equ 0F60h ;# 
# 2616 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
WPUB equ 0F61h ;# 
# 2678 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
IOCB equ 0F62h ;# 
# 2717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PSTR2CON equ 0F63h ;# 
# 2857 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ECCP2AS equ 0F64h ;# 
# 2862 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCP2AS equ 0F64h ;# 
# 3099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PWM2CON equ 0F65h ;# 
# 3169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR2 equ 0F67h ;# 
# 3258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR2L equ 0F67h ;# 
# 3278 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR2H equ 0F68h ;# 
# 3298 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP2CON3 equ 0F69h ;# 
# 3360 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3430 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4095 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4165 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
BAUDCON2 equ 0F70h ;# 
# 4190 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
BAUD2CON equ 0F70h ;# 
# 4447 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
RCSTA2 equ 0F71h ;# 
# 4452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
RC2STA equ 0F71h ;# 
# 4735 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TXSTA2 equ 0F72h ;# 
# 4740 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TX2STA equ 0F72h ;# 
# 4987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TXREG2 equ 0F73h ;# 
# 4992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TX2REG equ 0F73h ;# 
# 5025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
RCREG2 equ 0F74h ;# 
# 5030 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
RC2REG equ 0F74h ;# 
# 5063 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SPBRG2 equ 0F75h ;# 
# 5068 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SP2BRG equ 0F75h ;# 
# 5101 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SPBRGH2 equ 0F76h ;# 
# 5106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SP2BRGH equ 0F76h ;# 
# 5139 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CM2CON1 equ 0F77h ;# 
# 5144 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CM12CON equ 0F77h ;# 
# 5261 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CM2CON0 equ 0F78h ;# 
# 5266 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CM2CON equ 0F78h ;# 
# 5541 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CM1CON0 equ 0F79h ;# 
# 5546 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CM1CON equ 0F79h ;# 
# 5963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PIE4 equ 0F7Ah ;# 
# 5995 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PIR4 equ 0F7Bh ;# 
# 6027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
IPR4 equ 0F7Ch ;# 
# 6067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PIE5 equ 0F7Dh ;# 
# 6099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PIR5 equ 0F7Eh ;# 
# 6131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
IPR5 equ 0F7Fh ;# 
# 6177 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PORTA equ 0F80h ;# 
# 6468 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PORTB equ 0F81h ;# 
# 6841 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PORTC equ 0F82h ;# 
# 7172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PORTE equ 0F84h ;# 
# 7247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
LATA equ 0F89h ;# 
# 7359 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
LATB equ 0F8Ah ;# 
# 7471 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
LATC equ 0F8Bh ;# 
# 7583 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TRISA equ 0F92h ;# 
# 7588 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
DDRA equ 0F92h ;# 
# 7805 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TRISB equ 0F93h ;# 
# 7810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
DDRB equ 0F93h ;# 
# 8027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TRISC equ 0F94h ;# 
# 8032 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
DDRC equ 0F94h ;# 
# 8249 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TRISE equ 0F96h ;# 
# 8270 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
HLVDCON equ 0F9Ch ;# 
# 8345 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
LVDCON equ 0F9Ch ;# 
# 8620 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PIE1 equ 0F9Dh ;# 
# 8697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PIR1 equ 0F9Eh ;# 
# 8774 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
IPR1 equ 0F9Fh ;# 
# 8851 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PIE2 equ 0FA0h ;# 
# 8937 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PIR2 equ 0FA1h ;# 
# 9023 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
IPR2 equ 0FA2h ;# 
# 9109 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PIE3 equ 0FA3h ;# 
# 9219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PIR3 equ 0FA4h ;# 
# 9297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
IPR3 equ 0FA5h ;# 
# 9375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
EECON1 equ 0FA6h ;# 
# 9441 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
EECON2 equ 0FA7h ;# 
# 9461 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
EEDATA equ 0FA8h ;# 
# 9481 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
EEADR equ 0FA9h ;# 
# 9551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
RCSTA1 equ 0FABh ;# 
# 9556 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
RCSTA equ 0FABh ;# 
# 9560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
RC1STA equ 0FABh ;# 
# 10007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TXSTA1 equ 0FACh ;# 
# 10012 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TXSTA equ 0FACh ;# 
# 10016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TX1STA equ 0FACh ;# 
# 10382 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TXREG1 equ 0FADh ;# 
# 10387 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TXREG equ 0FADh ;# 
# 10391 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TX1REG equ 0FADh ;# 
# 10460 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
RCREG1 equ 0FAEh ;# 
# 10465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
RCREG equ 0FAEh ;# 
# 10469 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
RC1REG equ 0FAEh ;# 
# 10538 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SPBRG1 equ 0FAFh ;# 
# 10543 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SPBRG equ 0FAFh ;# 
# 10547 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SP1BRG equ 0FAFh ;# 
# 10616 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10621 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SPBRGH equ 0FB0h ;# 
# 10625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SP1BRGH equ 0FB0h ;# 
# 10694 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
T3CON equ 0FB1h ;# 
# 10802 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR3 equ 0FB2h ;# 
# 10809 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR3L equ 0FB2h ;# 
# 10829 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR3H equ 0FB3h ;# 
# 10849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
T3GCON equ 0FB4h ;# 
# 10944 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ECCP1AS equ 0FB6h ;# 
# 10949 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ECCPAS equ 0FB6h ;# 
# 11326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PWM1CON equ 0FB7h ;# 
# 11331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PWMCON equ 0FB7h ;# 
# 11580 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11585 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
BAUDCON equ 0FB8h ;# 
# 11589 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
BAUDCTL equ 0FB8h ;# 
# 11593 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
BAUD1CON equ 0FB8h ;# 
# 12254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PSTR1CON equ 0FB9h ;# 
# 12259 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PSTRCON equ 0FB9h ;# 
# 12404 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
T2CON equ 0FBAh ;# 
# 12475 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PR2 equ 0FBBh ;# 
# 12495 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR2 equ 0FBCh ;# 
# 12515 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCP1CON equ 0FBDh ;# 
# 12597 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR1 equ 0FBEh ;# 
# 12604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR1L equ 0FBEh ;# 
# 12624 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
CCPR1H equ 0FBFh ;# 
# 12644 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ADCON2 equ 0FC0h ;# 
# 12715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ADCON1 equ 0FC1h ;# 
# 12783 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ADCON0 equ 0FC2h ;# 
# 12908 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ADRES equ 0FC3h ;# 
# 12915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ADRESL equ 0FC3h ;# 
# 12935 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
ADRESH equ 0FC4h ;# 
# 12955 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP1CON2 equ 0FC5h ;# 
# 12960 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSPCON2 equ 0FC5h ;# 
# 13309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13314 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSPCON1 equ 0FC6h ;# 
# 13547 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP1STAT equ 0FC7h ;# 
# 13552 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSPSTAT equ 0FC7h ;# 
# 14177 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP1ADD equ 0FC8h ;# 
# 14182 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSPADD equ 0FC8h ;# 
# 14431 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP1BUF equ 0FC9h ;# 
# 14436 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSPBUF equ 0FC9h ;# 
# 14485 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP1MSK equ 0FCAh ;# 
# 14490 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSPMSK equ 0FCAh ;# 
# 14623 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSP1CON3 equ 0FCBh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
SSPCON3 equ 0FCBh ;# 
# 14745 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
T1GCON equ 0FCCh ;# 
# 14840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
T1CON equ 0FCDh ;# 
# 14953 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR1 equ 0FCEh ;# 
# 14960 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR1L equ 0FCEh ;# 
# 14980 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR1H equ 0FCFh ;# 
# 15000 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
RCON equ 0FD0h ;# 
# 15133 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
WDTCON equ 0FD1h ;# 
# 15161 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
OSCCON2 equ 0FD2h ;# 
# 15218 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
OSCCON equ 0FD3h ;# 
# 15301 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
T0CON equ 0FD5h ;# 
# 15371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR0 equ 0FD6h ;# 
# 15378 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR0L equ 0FD6h ;# 
# 15398 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TMR0H equ 0FD7h ;# 
# 15418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
STATUS equ 0FD8h ;# 
# 15489 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
FSR2 equ 0FD9h ;# 
# 15496 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
FSR2L equ 0FD9h ;# 
# 15516 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
FSR2H equ 0FDAh ;# 
# 15523 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PLUSW2 equ 0FDBh ;# 
# 15543 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PREINC2 equ 0FDCh ;# 
# 15563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
POSTDEC2 equ 0FDDh ;# 
# 15583 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
POSTINC2 equ 0FDEh ;# 
# 15603 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
INDF2 equ 0FDFh ;# 
# 15623 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
BSR equ 0FE0h ;# 
# 15630 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
FSR1 equ 0FE1h ;# 
# 15637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
FSR1L equ 0FE1h ;# 
# 15657 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
FSR1H equ 0FE2h ;# 
# 15664 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PLUSW1 equ 0FE3h ;# 
# 15684 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PREINC1 equ 0FE4h ;# 
# 15704 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
POSTDEC1 equ 0FE5h ;# 
# 15724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
POSTINC1 equ 0FE6h ;# 
# 15744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
INDF1 equ 0FE7h ;# 
# 15764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
WREG equ 0FE8h ;# 
# 15802 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
FSR0 equ 0FE9h ;# 
# 15809 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
FSR0L equ 0FE9h ;# 
# 15829 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
FSR0H equ 0FEAh ;# 
# 15836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PLUSW0 equ 0FEBh ;# 
# 15856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PREINC0 equ 0FECh ;# 
# 15876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
POSTDEC0 equ 0FEDh ;# 
# 15896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
POSTINC0 equ 0FEEh ;# 
# 15916 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
INDF0 equ 0FEFh ;# 
# 15936 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
INTCON3 equ 0FF0h ;# 
# 16028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
INTCON2 equ 0FF1h ;# 
# 16098 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
INTCON equ 0FF2h ;# 
# 16215 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PROD equ 0FF3h ;# 
# 16222 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PRODL equ 0FF3h ;# 
# 16242 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PRODH equ 0FF4h ;# 
# 16262 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TABLAT equ 0FF5h ;# 
# 16284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TBLPTR equ 0FF6h ;# 
# 16291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TBLPTRL equ 0FF6h ;# 
# 16311 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TBLPTRH equ 0FF7h ;# 
# 16331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TBLPTRU equ 0FF8h ;# 
# 16362 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PCLAT equ 0FF9h ;# 
# 16369 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PC equ 0FF9h ;# 
# 16376 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PCL equ 0FF9h ;# 
# 16396 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PCLATH equ 0FFAh ;# 
# 16416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
PCLATU equ 0FFBh ;# 
# 16423 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
STKPTR equ 0FFCh ;# 
# 16529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TOS equ 0FFDh ;# 
# 16536 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TOSL equ 0FFDh ;# 
# 16556 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TOSH equ 0FFEh ;# 
# 16576 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f24k22.h"
TOSU equ 0FFFh ;# 
# 55 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ANSELA equ 0F38h ;# 
# 100 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ANSELB equ 0F39h ;# 
# 150 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ANSELC equ 0F3Ah ;# 
# 201 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PMD2 equ 0F3Dh ;# 
# 239 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PMD1 equ 0F3Eh ;# 
# 304 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PMD0 equ 0F3Fh ;# 
# 381 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
VREFCON2 equ 0F40h ;# 
# 386 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DACCON1 equ 0F40h ;# 
# 483 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
VREFCON1 equ 0F41h ;# 
# 488 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DACCON0 equ 0F41h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
VREFCON0 equ 0F42h ;# 
# 608 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FVRCON equ 0F42h ;# 
# 697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUICON equ 0F43h ;# 
# 702 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUICONH equ 0F43h ;# 
# 847 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCONL equ 0F44h ;# 
# 852 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCON1 equ 0F44h ;# 
# 1001 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCONH equ 0F45h ;# 
# 1006 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CTMUCON0 equ 0F45h ;# 
# 1113 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SRCON1 equ 0F46h ;# 
# 1175 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SRCON0 equ 0F47h ;# 
# 1246 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPTMRS1 equ 0F48h ;# 
# 1298 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPTMRS0 equ 0F49h ;# 
# 1372 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T6CON equ 0F4Ah ;# 
# 1443 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PR6 equ 0F4Bh ;# 
# 1463 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR6 equ 0F4Ch ;# 
# 1483 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T5GCON equ 0F4Dh ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T5CON equ 0F4Eh ;# 
# 1687 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR5 equ 0F4Fh ;# 
# 1694 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR5L equ 0F4Fh ;# 
# 1714 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR5H equ 0F50h ;# 
# 1734 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T4CON equ 0F51h ;# 
# 1805 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PR4 equ 0F52h ;# 
# 1825 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR4 equ 0F53h ;# 
# 1845 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP5CON equ 0F54h ;# 
# 1909 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR5 equ 0F55h ;# 
# 1916 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR5L equ 0F55h ;# 
# 1936 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR5H equ 0F56h ;# 
# 1956 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP4CON equ 0F57h ;# 
# 2020 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR4 equ 0F58h ;# 
# 2027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR4L equ 0F58h ;# 
# 2047 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR4H equ 0F59h ;# 
# 2067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTR3CON equ 0F5Ah ;# 
# 2143 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCP3AS equ 0F5Bh ;# 
# 2148 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP3AS equ 0F5Bh ;# 
# 2385 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWM3CON equ 0F5Ch ;# 
# 2455 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP3CON equ 0F5Dh ;# 
# 2537 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR3 equ 0F5Eh ;# 
# 2544 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR3L equ 0F5Eh ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR3H equ 0F5Fh ;# 
# 2584 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SLRCON equ 0F60h ;# 
# 2616 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
WPUB equ 0F61h ;# 
# 2678 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IOCB equ 0F62h ;# 
# 2717 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTR2CON equ 0F63h ;# 
# 2857 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCP2AS equ 0F64h ;# 
# 2862 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP2AS equ 0F64h ;# 
# 3099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWM2CON equ 0F65h ;# 
# 3169 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP2CON equ 0F66h ;# 
# 3251 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR2 equ 0F67h ;# 
# 3258 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR2L equ 0F67h ;# 
# 3278 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR2H equ 0F68h ;# 
# 3298 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2CON3 equ 0F69h ;# 
# 3360 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2MSK equ 0F6Ah ;# 
# 3430 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2CON2 equ 0F6Bh ;# 
# 3575 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2CON1 equ 0F6Ch ;# 
# 3695 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2STAT equ 0F6Dh ;# 
# 4095 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2ADD equ 0F6Eh ;# 
# 4165 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP2BUF equ 0F6Fh ;# 
# 4185 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCON2 equ 0F70h ;# 
# 4190 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUD2CON equ 0F70h ;# 
# 4447 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCSTA2 equ 0F71h ;# 
# 4452 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC2STA equ 0F71h ;# 
# 4735 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXSTA2 equ 0F72h ;# 
# 4740 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX2STA equ 0F72h ;# 
# 4987 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXREG2 equ 0F73h ;# 
# 4992 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX2REG equ 0F73h ;# 
# 5025 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCREG2 equ 0F74h ;# 
# 5030 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC2REG equ 0F74h ;# 
# 5063 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRG2 equ 0F75h ;# 
# 5068 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP2BRG equ 0F75h ;# 
# 5101 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRGH2 equ 0F76h ;# 
# 5106 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP2BRGH equ 0F76h ;# 
# 5139 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM2CON1 equ 0F77h ;# 
# 5144 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM12CON equ 0F77h ;# 
# 5261 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM2CON0 equ 0F78h ;# 
# 5266 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM2CON equ 0F78h ;# 
# 5541 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM1CON0 equ 0F79h ;# 
# 5546 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CM1CON equ 0F79h ;# 
# 5963 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE4 equ 0F7Ah ;# 
# 5995 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR4 equ 0F7Bh ;# 
# 6027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR4 equ 0F7Ch ;# 
# 6067 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE5 equ 0F7Dh ;# 
# 6099 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR5 equ 0F7Eh ;# 
# 6131 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR5 equ 0F7Fh ;# 
# 6177 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTA equ 0F80h ;# 
# 6468 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTB equ 0F81h ;# 
# 6841 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTC equ 0F82h ;# 
# 7172 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PORTE equ 0F84h ;# 
# 7247 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LATA equ 0F89h ;# 
# 7359 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LATB equ 0F8Ah ;# 
# 7471 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LATC equ 0F8Bh ;# 
# 7583 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISA equ 0F92h ;# 
# 7588 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DDRA equ 0F92h ;# 
# 7805 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISB equ 0F93h ;# 
# 7810 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DDRB equ 0F93h ;# 
# 8027 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISC equ 0F94h ;# 
# 8032 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
DDRC equ 0F94h ;# 
# 8249 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TRISE equ 0F96h ;# 
# 8270 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
OSCTUNE equ 0F9Bh ;# 
# 8340 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
HLVDCON equ 0F9Ch ;# 
# 8345 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
LVDCON equ 0F9Ch ;# 
# 8620 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE1 equ 0F9Dh ;# 
# 8697 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR1 equ 0F9Eh ;# 
# 8774 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR1 equ 0F9Fh ;# 
# 8851 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE2 equ 0FA0h ;# 
# 8937 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR2 equ 0FA1h ;# 
# 9023 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR2 equ 0FA2h ;# 
# 9109 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIE3 equ 0FA3h ;# 
# 9219 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PIR3 equ 0FA4h ;# 
# 9297 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
IPR3 equ 0FA5h ;# 
# 9375 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EECON1 equ 0FA6h ;# 
# 9441 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EECON2 equ 0FA7h ;# 
# 9461 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EEDATA equ 0FA8h ;# 
# 9481 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
EEADR equ 0FA9h ;# 
# 9551 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCSTA1 equ 0FABh ;# 
# 9556 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCSTA equ 0FABh ;# 
# 9560 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC1STA equ 0FABh ;# 
# 10007 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXSTA1 equ 0FACh ;# 
# 10012 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXSTA equ 0FACh ;# 
# 10016 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX1STA equ 0FACh ;# 
# 10382 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXREG1 equ 0FADh ;# 
# 10387 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TXREG equ 0FADh ;# 
# 10391 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TX1REG equ 0FADh ;# 
# 10460 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCREG1 equ 0FAEh ;# 
# 10465 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCREG equ 0FAEh ;# 
# 10469 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RC1REG equ 0FAEh ;# 
# 10538 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRG1 equ 0FAFh ;# 
# 10543 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRG equ 0FAFh ;# 
# 10547 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP1BRG equ 0FAFh ;# 
# 10616 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRGH1 equ 0FB0h ;# 
# 10621 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SPBRGH equ 0FB0h ;# 
# 10625 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SP1BRGH equ 0FB0h ;# 
# 10694 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T3CON equ 0FB1h ;# 
# 10802 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR3 equ 0FB2h ;# 
# 10809 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR3L equ 0FB2h ;# 
# 10829 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR3H equ 0FB3h ;# 
# 10849 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T3GCON equ 0FB4h ;# 
# 10944 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCP1AS equ 0FB6h ;# 
# 10949 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ECCPAS equ 0FB6h ;# 
# 11326 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWM1CON equ 0FB7h ;# 
# 11331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PWMCON equ 0FB7h ;# 
# 11580 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCON1 equ 0FB8h ;# 
# 11585 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCON equ 0FB8h ;# 
# 11589 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUDCTL equ 0FB8h ;# 
# 11593 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BAUD1CON equ 0FB8h ;# 
# 12254 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTR1CON equ 0FB9h ;# 
# 12259 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PSTRCON equ 0FB9h ;# 
# 12404 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T2CON equ 0FBAh ;# 
# 12475 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PR2 equ 0FBBh ;# 
# 12495 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR2 equ 0FBCh ;# 
# 12515 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCP1CON equ 0FBDh ;# 
# 12597 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR1 equ 0FBEh ;# 
# 12604 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR1L equ 0FBEh ;# 
# 12624 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
CCPR1H equ 0FBFh ;# 
# 12644 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADCON2 equ 0FC0h ;# 
# 12715 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADCON1 equ 0FC1h ;# 
# 12783 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADCON0 equ 0FC2h ;# 
# 12908 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADRES equ 0FC3h ;# 
# 12915 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADRESL equ 0FC3h ;# 
# 12935 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
ADRESH equ 0FC4h ;# 
# 12955 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1CON2 equ 0FC5h ;# 
# 12960 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPCON2 equ 0FC5h ;# 
# 13309 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1CON1 equ 0FC6h ;# 
# 13314 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPCON1 equ 0FC6h ;# 
# 13547 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1STAT equ 0FC7h ;# 
# 13552 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPSTAT equ 0FC7h ;# 
# 14177 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1ADD equ 0FC8h ;# 
# 14182 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPADD equ 0FC8h ;# 
# 14431 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1BUF equ 0FC9h ;# 
# 14436 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPBUF equ 0FC9h ;# 
# 14485 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1MSK equ 0FCAh ;# 
# 14490 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPMSK equ 0FCAh ;# 
# 14623 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSP1CON3 equ 0FCBh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
SSPCON3 equ 0FCBh ;# 
# 14745 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T1GCON equ 0FCCh ;# 
# 14840 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T1CON equ 0FCDh ;# 
# 14953 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR1 equ 0FCEh ;# 
# 14960 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR1L equ 0FCEh ;# 
# 14980 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR1H equ 0FCFh ;# 
# 15000 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
RCON equ 0FD0h ;# 
# 15133 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
WDTCON equ 0FD1h ;# 
# 15161 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
OSCCON2 equ 0FD2h ;# 
# 15218 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
OSCCON equ 0FD3h ;# 
# 15301 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
T0CON equ 0FD5h ;# 
# 15371 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR0 equ 0FD6h ;# 
# 15378 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR0L equ 0FD6h ;# 
# 15398 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TMR0H equ 0FD7h ;# 
# 15418 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
STATUS equ 0FD8h ;# 
# 15489 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR2 equ 0FD9h ;# 
# 15496 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR2L equ 0FD9h ;# 
# 15516 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR2H equ 0FDAh ;# 
# 15523 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PLUSW2 equ 0FDBh ;# 
# 15543 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PREINC2 equ 0FDCh ;# 
# 15563 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTDEC2 equ 0FDDh ;# 
# 15583 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTINC2 equ 0FDEh ;# 
# 15603 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INDF2 equ 0FDFh ;# 
# 15623 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
BSR equ 0FE0h ;# 
# 15630 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR1 equ 0FE1h ;# 
# 15637 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR1L equ 0FE1h ;# 
# 15657 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR1H equ 0FE2h ;# 
# 15664 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PLUSW1 equ 0FE3h ;# 
# 15684 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PREINC1 equ 0FE4h ;# 
# 15704 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTDEC1 equ 0FE5h ;# 
# 15724 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTINC1 equ 0FE6h ;# 
# 15744 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INDF1 equ 0FE7h ;# 
# 15764 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
WREG equ 0FE8h ;# 
# 15802 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR0 equ 0FE9h ;# 
# 15809 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR0L equ 0FE9h ;# 
# 15829 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
FSR0H equ 0FEAh ;# 
# 15836 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PLUSW0 equ 0FEBh ;# 
# 15856 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PREINC0 equ 0FECh ;# 
# 15876 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTDEC0 equ 0FEDh ;# 
# 15896 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
POSTINC0 equ 0FEEh ;# 
# 15916 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INDF0 equ 0FEFh ;# 
# 15936 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INTCON3 equ 0FF0h ;# 
# 16028 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INTCON2 equ 0FF1h ;# 
# 16098 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
INTCON equ 0FF2h ;# 
# 16215 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PROD equ 0FF3h ;# 
# 16222 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PRODL equ 0FF3h ;# 
# 16242 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PRODH equ 0FF4h ;# 
# 16262 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TABLAT equ 0FF5h ;# 
# 16284 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTR equ 0FF6h ;# 
# 16291 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTRL equ 0FF6h ;# 
# 16311 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTRH equ 0FF7h ;# 
# 16331 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TBLPTRU equ 0FF8h ;# 
# 16362 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCLAT equ 0FF9h ;# 
# 16369 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PC equ 0FF9h ;# 
# 16376 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCL equ 0FF9h ;# 
# 16396 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCLATH equ 0FFAh ;# 
# 16416 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
PCLATU equ 0FFBh ;# 
# 16423 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
STKPTR equ 0FFCh ;# 
# 16529 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOS equ 0FFDh ;# 
# 16536 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOSL equ 0FFDh ;# 
# 16556 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOSH equ 0FFEh ;# 
# 16576 "C:\Program Files\Microchip\xc8\v2.36\pic\include\proc\pic18f25k22.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_UATR_R_Init
	FNCALL	_main,___init
	FNROOT	_main
	FNCALL	intlevel2,_high_isr
	global	intlevel2
	FNROOT	intlevel2
	global	_Data
	global	_PEIE
_PEIE	set	0x7F96
	global	_CREN1
_CREN1	set	0x7D5C
	global	_SYNC1
_SYNC1	set	0x7D64
	global	_TRISC7
_TRISC7	set	0x7CA7
	global	_LATA0
_LATA0	set	0x7C48
	global	_LATA
_LATA	set	0xF89
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISC6
_TRISC6	set	0x7CA6
	global	_RC1IE
_RC1IE	set	0x7CED
	global	_TX1STAbits
_TX1STAbits	set	0xFAC
	global	_RCREG1
_RCREG1	set	0xFAE
	global	_SPEN1
_SPEN1	set	0x7D5F
	global	_RC1IF
_RC1IF	set	0x7CF5
	global	_SPBRG1
_SPBRG1	set	0xFAF
	global	_BAUD1CONbits
_BAUD1CONbits	set	0xFB8
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_GIE
_GIE	set	0x7F97
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config FOSC = "INTIO67"
	config WDTEN = "OFF"
	config PBADEN = "OFF"
	config LVP = "OFF"
	file	"main.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_Data
_Data:
       ds      1
	file	"main.as"
	line	#
psect	cinit
; Clear objects allocated to COMRAM (1 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+0)&0xffh,c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?___init:	; 1 bytes @ 0x0
??___init:	; 1 bytes @ 0x0
?_UATR_R_Init:	; 1 bytes @ 0x0
??_UATR_R_Init:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
??_main:	; 1 bytes @ 0x0
?_high_isr:	; 1 bytes @ 0x0
??_high_isr:	; 1 bytes @ 0x0
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         1
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94      0       1
;!    BANK0           160      0       0
;!    BANK1           256      0       0
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMRAM
;!
;!    None.
;!
;!Critical Paths under _high_isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _high_isr in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0       0
;!                        _UATR_R_Init
;!                             ___init
;! ---------------------------------------------------------------------------------
;! (1) ___init                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _UATR_R_Init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _high_isr                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _UATR_R_Init
;!   ___init
;!
;! _high_isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      26        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      13        0.0%
;!BANK5              100      0       0      14        0.0%
;!BITBANK4           100      0       0      11        0.0%
;!BANK4              100      0       0      12        0.0%
;!BITBANK3           100      0       0       9        0.0%
;!BANK3              100      0       0      10        0.0%
;!BITBANK2           100      0       0       7        0.0%
;!BANK2              100      0       0       8        0.0%
;!BITBANK1           100      0       0       5        0.0%
;!BANK1              100      0       0       6        0.0%
;!BITBANK0            A0      0       0       3        0.0%
;!BANK0               A0      0       0       4        0.0%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E      0       1       1        1.1%
;!BITBIGSFRll         51      0       0      24        0.0%
;!BITBIGSFRhhhhl      1E      0       0      16        0.0%
;!BITBIGSFRhhhlh      1A      0       0      17        0.0%
;!BITBIGSFRhhhhh       D      0       0      15        0.0%
;!BITBIGSFRhhll        C      0       0      20        0.0%
;!BITBIGSFRhlh         8      0       0      21        0.0%
;!BITBIGSFRhhhll       8      0       0      18        0.0%
;!BITBIGSFRlh          8      0       0      23        0.0%
;!BITBIGSFRhhlh        1      0       0      19        0.0%
;!BITBIGSFRhll         1      0       0      22        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0       1      25        0.0%
;!DATA                 0      0       1      27        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 15 in file "src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_UATR_R_Init
;;		___init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"src\main.c"
	line	15
global __ptext0
__ptext0:
psect	text0
	file	"src\main.c"
	line	15
	
_main:
;incstack = 0
	callstack 29
	line	17
	
l836:
	call	___init	;wreg free
	line	18
	call	_UATR_R_Init	;wreg free
	line	20
	
l838:
	movlw	low(0)
	movwf	((c:3986))^0f00h,c	;volatile
	line	21
	
l840:
	movlw	low(0)
	movwf	((c:3977))^0f00h,c	;volatile
	line	25
	
l842:
	movff	(c:_Data),(c:3977)	;volatile
	goto	l842
	global	start
	goto	start
	callstack 0
	line	27
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	___init

;; *************** function ___init *****************
;; Defined at:
;;		line 5 in file "src\lib.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"src\lib.c"
	line	5
global __ptext1
__ptext1:
psect	text1
	file	"src\lib.c"
	line	5
	
___init:
;incstack = 0
	callstack 29
	line	7
	
l812:
	movlw	low(050h)
	movwf	((c:4051))^0f00h,c	;volatile
	line	13
	
l37:
	return	;funcret
	callstack 0
GLOBAL	__end_of___init
	__end_of___init:
	signat	___init,89
	global	_UATR_R_Init

;; *************** function _UATR_R_Init *****************
;; Defined at:
;;		line 5 in file "src\UART_R.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	file	"src\UART_R.c"
	line	5
global __ptext2
__ptext2:
psect	text2
	file	"src\UART_R.c"
	line	5
	
_UATR_R_Init:
;incstack = 0
	callstack 29
	line	7
	
l814:
	bsf	((c:4012))^0f00h,c,2	;volatile
	line	8
	bcf	((c:4024))^0f00h,c,3	;volatile
	line	9
	
l816:
	movlw	low(019h)
	movwf	((c:4015))^0f00h,c	;volatile
	line	11
	
l818:
	bsf	c:(31910/8),(31910)&7	;volatile
	line	12
	
l820:
	bsf	c:(31911/8),(31911)&7	;volatile
	line	14
	
l822:
	bcf	c:(32100/8),(32100)&7	;volatile
	line	15
	
l824:
	bsf	c:(32095/8),(32095)&7	;volatile
	line	17
	
l826:
	bsf	c:(32092/8),(32092)&7	;volatile
	line	20
	
l828:
	bsf	c:(31981/8),(31981)&7	;volatile
	line	21
	
l830:
	bcf	c:(31989/8),(31989)&7	;volatile
	line	22
	
l832:
	bsf	c:(32663/8),(32663)&7	;volatile
	line	23
	
l834:
	bsf	c:(32662/8),(32662)&7	;volatile
	line	25
	
l64:
	return	;funcret
	callstack 0
GLOBAL	__end_of_UATR_R_Init
	__end_of_UATR_R_Init:
	signat	_UATR_R_Init,89
	global	_high_isr

;; *************** function _high_isr *****************
;; Defined at:
;;		line 29 in file "src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
	file	"main.as"
	line	#
global __pintcode
__pintcode:
psect	intcode
	file	"src\main.c"
	line	29
	
_high_isr:
;incstack = 0
	callstack 29
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	line	31
	
i2l844:
	btfss	c:(31981/8),(31981)&7	;volatile
	goto	i2u1_41
	goto	i2u1_40
i2u1_41:
	goto	i2l32
i2u1_40:
	
i2l846:
	btfss	c:(31989/8),(31989)&7	;volatile
	goto	i2u2_41
	goto	i2u2_40
i2u2_41:
	goto	i2l32
i2u2_40:
	line	33
	
i2l848:
	movff	(c:4014),(c:_Data)	;volatile
	line	34
	bsf	c:(31816/8),(31816)&7	;volatile
	line	36
	bcf	c:(31989/8),(31989)&7	;volatile
	line	39
	
i2l32:
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	callstack 0
GLOBAL	__end_of_high_isr
	__end_of_high_isr:
	signat	_high_isr,89
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	global	wtemp8
	wtemp8 set btemp+1
	global	ttemp5
	ttemp5 set btemp+1
	global	ttemp6
	ttemp6 set btemp+4
	global	ttemp7
	ttemp7 set btemp+8
	end
