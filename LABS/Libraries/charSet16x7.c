//##############################################################################
//	filename:		CharSet16x8.c
//
// 	Implements the ......
//
//##############################################################################
//
//      Author:             VSK
//      Company:            HS Ulm
//
//      Revision:           x.x
//      Date:               Aug. 2017 01
//      Assembled using     MPLABX 3.65 C18 3.47
//
//
//##############################################################################

#if defined(__18CXX)          // C18 compiler
    #define const const rom // replaces "const" with "const rom"
#endif

const char charSet16x7[] = {
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x00    black box
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x01    (�)
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00,
    0x80, 0xD8, 0x58, 0x40, 0x58, 0xD8, 0x80, //0x6F    (�) 
    0x0F, 0x1F, 0x10, 0x10, 0x10, 0x1F, 0x0F,
    //0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x02    (�)
    //0x00, 0x42, 0x61, 0x51, 0x49, 0x46, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x03    (�)
    0x00, 0x21, 0x41, 0x45, 0x4B, 0x31, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x04    (�)
    0x00, 0x18, 0x14, 0x12, 0x7F, 0x10, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x05    (�)
    0x00, 0x27, 0x45, 0x45, 0x45, 0x39, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x06    (�)
    0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x07    (�)
    0x00, 0x01, 0x71, 0x09, 0x05, 0x03, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x08    <-
    0x00, 0x36, 0x49, 0x49, 0x49, 0x36, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x09
    0x00, 0x06, 0x49, 0x49, 0x29, 0x1E, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x0A
    0x00, 0x7E, 0x11, 0x11, 0x11, 0x7E, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x0B
    0x00, 0x7F, 0x49, 0x49, 0x49, 0x36, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x0C
    0x00, 0x3E, 0x41, 0x41, 0x41, 0x22, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x0D
    0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x0E
    0x00, 0x7F, 0x49, 0x49, 0x49, 0x41, 0x00,
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00, //0x0F
    0x00, 0x7F, 0x09, 0x09, 0x09, 0x01, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x10
    0x00, 0x3E, 0x51, 0x45, 0x43, 0x3E, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x11
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x12
    0x00, 0x42, 0x61, 0x51, 0x49, 0x46, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x13
    0x00, 0x21, 0x41, 0x45, 0x4B, 0x31, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x14
    0x00, 0x18, 0x14, 0x12, 0x7F, 0x10, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x15
    0x00, 0x27, 0x45, 0x45, 0x45, 0x39, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x16
    0x00, 0x3C, 0x4A, 0x49, 0x49, 0x30, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x17
    0x00, 0x01, 0x71, 0x09, 0x05, 0x03, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x18
    0x00, 0x36, 0x49, 0x49, 0x49, 0x36, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x19
    0x00, 0x06, 0x49, 0x49, 0x29, 0x1E, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x1A
    0x00, 0x7E, 0x11, 0x11, 0x11, 0x7E, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x1B
    0x00, 0x7F, 0x49, 0x49, 0x49, 0x36, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x1C
    0x00, 0x3E, 0x41, 0x41, 0x41, 0x22, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x1D
    0x00, 0x7F, 0x41, 0x41, 0x22, 0x1C, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x1E  OMEGA
    0x00, 0x7F, 0x49, 0x49, 0x49, 0x41, 0x00,
    0x00, 0x00, 0x42, 0x7F, 0x40, 0x00, 0x00, //0x1F
    0x00, 0x7F, 0x09, 0x09, 0x09, 0x01, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x20
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x70, 0xF8, 0xF8, 0x70, 0x00, //0x21    !
    0x00, 0x00, 0x00, 0x1C, 0x1C, 0x00, 0x00,
    0x00, 0x1C, 0x3C, 0x00, 0x00, 0x3C, 0x1C, //0x22    "
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x40, 0xF0, 0xF0, 0x40, 0xF0, 0xF0, 0x40, //0x23    #
    0x04, 0x1F, 0x1F, 0x04, 0x1F, 0x1F, 0x04,
    0x70, 0xF8, 0x88, 0x8E, 0x8E, 0x98, 0x30, //0x24    $
    0x0C, 0x18, 0x10, 0x70, 0x70, 0x1F, 0x0F,
    0x60, 0x60, 0x00, 0x00, 0x80, 0xC0, 0x60, //0x25    %
    0x18, 0x0C, 0x06, 0x03, 0x01, 0x18, 0x18,
    0x00, 0xB0, 0xF8, 0xC8, 0x78, 0xB0, 0x80, //0x26    &
    0x0F, 0x1F, 0x10, 0x11, 0x0F, 0x1F, 0x10,
    0x00, 0x20, 0x3C, 0x1C, 0x00, 0x00, 0x00, //0x27    '
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0xE0, 0xF0, 0x18, 0x08, 0x00, //0x28    (
    0x00, 0x00, 0x07, 0x0F, 0x18, 0x10, 0x00,
    0x00, 0x00, 0x08, 0x18, 0xF0, 0xE0, 0x00, //0x29    )
    0x00, 0x00, 0x10, 0x18, 0x0F, 0x07, 0x00,
    0x00, 0x40, 0xC0, 0x80, 0xC0, 0x40, 0x00, //0x2A    *
    0x01, 0x05, 0x07, 0x03, 0x07, 0x05, 0x01,
    0x00, 0x00, 0x00, 0xC0, 0xC0, 0x00, 0x00, //0x2B    +
    0x00, 0x01, 0x01, 0x07, 0x07, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x2C    ,
    0x00, 0x00, 0x40, 0x3C, 0x1C, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x2D    -
    0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x2E    .
    0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x80, 0xC0, 0x60, //0x2F    /
    0x18, 0x0C, 0x06, 0x03, 0x01, 0x00, 0x00,
    0xE0, 0xF0, 0x18, 0x88, 0x18, 0xF0, 0xE0, //0x30    0
    0x07, 0x0F, 0x18, 0x10, 0x18, 0x0F, 0x07,
    0x00, 0x20, 0x30, 0xF8, 0xF8, 0x00, 0x00, //0x31    1
    0x00, 0x10, 0x10, 0x1F, 0x1F, 0x10, 0x10,
    0x10, 0x18, 0x08, 0x88, 0xC8, 0x78, 0x30, //0x32    2
    0x1C, 0x1E, 0x13, 0x11, 0x10, 0x18, 0x18,
    0x10, 0x18, 0x88, 0x88, 0x88, 0xF8, 0x70, //0x33    3
    0x08, 0x18, 0x10, 0x10, 0x10, 0x1F, 0x0F,
    0x80, 0xC0, 0x60, 0x30, 0xF8, 0xF8, 0x00, //0x34    4
    0x01, 0x01, 0x01, 0x11, 0x1F, 0x1F, 0x11,
    0xF8, 0xF8, 0x88, 0x88, 0x88, 0x88, 0x08, //0x35    5
    0x08, 0x18, 0x10, 0x10, 0x10, 0x1F, 0x0F,
    0xE0, 0xF0, 0x98, 0x88, 0x88, 0x80, 0x00, //0x36    6
    0x0F, 0x1F, 0x10, 0x10, 0x10, 0x1F, 0x0F,
    0x18, 0x18, 0x08, 0x08, 0x88, 0xF8, 0x78, //0x37    7
    0x00, 0x00, 0x1E, 0x1F, 0x01, 0x00, 0x00,
    0x70, 0xF8, 0x88, 0x88, 0x88, 0xF8, 0x70, //0x38    8
    0x0F, 0x1F, 0x10, 0x10, 0x10, 0x1F, 0x0F,
    0x70, 0xF8, 0x88, 0x88, 0x88, 0xF8, 0xF0, //0x39    9
    0x00, 0x10, 0x10, 0x10, 0x18, 0x0F, 0x07,
    0x00, 0x00, 0x00, 0x60, 0x60, 0x00, 0x00, //0x3A    :
    0x00, 0x00, 0x00, 0x0C, 0x0C, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x60, 0x60, 0x00, 0x00, //0x3B    ;
    0x00, 0x00, 0x10, 0x1C, 0x0C, 0x00, 0x00,
    0x00, 0x00, 0x80, 0xC0, 0x60, 0x30, 0x10, //0x3C    <
    0x00, 0x01, 0x03, 0x06, 0x0C, 0x18, 0x10,
    0x00, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40, //0x3D    =
    0x00, 0x02, 0x02, 0x02, 0x02, 0x02, 0x02,
    0x00, 0x10, 0x30, 0x60, 0xC0, 0x80, 0x00, //0x3E    >
    0x00, 0x10, 0x18, 0x0C, 0x06, 0x03, 0x01,
    0x30, 0x38, 0x08, 0x88, 0xC8, 0x78, 0x30, //0x3F    ?
    0x00, 0x00, 0x00, 0x1B, 0x1B, 0x00, 0x00,
    0xE0, 0xF0, 0x10, 0x90, 0x90, 0xF0, 0xE0, //0x40    @
    0x0F, 0x1F, 0x10, 0x17, 0x15, 0x17, 0x03,
    0xC0, 0xE0, 0x30, 0x18, 0x30, 0xE0, 0xC0, //0x41    A
    0x1F, 0x1F, 0x01, 0x01, 0x01, 0x1F, 0x1F,
    0x08, 0xF8, 0xF8, 0x88, 0x88, 0xF8, 0x70, //0x42    B
    0x10, 0x1F, 0x1F, 0x10, 0x10, 0x1F, 0x0F,
    0xE0, 0xF0, 0x18, 0x08, 0x08, 0x18, 0x30, //0x43    C
    0x07, 0x0F, 0x18, 0x10, 0x10, 0x18, 0x0C,
    0x08, 0xF8, 0xF8, 0x08, 0x18, 0xF0, 0xE0, //0x44    D
    0x10, 0x1F, 0x1F, 0x10, 0x18, 0x0F, 0x07,
    0x08, 0xF8, 0xF8, 0x88, 0xC8, 0x18, 0x38, //0x45    E
    0x10, 0x1F, 0x1F, 0x10, 0x11, 0x18, 0x1C,
    0x08, 0xF8, 0xF8, 0x88, 0xC8, 0x18, 0x38, //0x46    F
    0x10, 0x1F, 0x1F, 0x10, 0x01, 0x00, 0x00,
    0xE0, 0xF0, 0x18, 0x08, 0x08, 0x18, 0x30, //0x47    G
    0x07, 0x0F, 0x18, 0x11, 0x11, 0x0F, 0x1F,
    0xF8, 0xF8, 0x80, 0x80, 0x80, 0xF8, 0xF8, //0x48    H
    0x1F, 0x1F, 0x00, 0x00, 0x00, 0x1F, 0x1F,
    0x00, 0x00, 0x08, 0xF8, 0xF8, 0x08, 0x00, //0x49    I
    0x00, 0x00, 0x10, 0x1F, 0x1F, 0x10, 0x00,
    0x00, 0x00, 0x00, 0x08, 0xF8, 0xF8, 0x08, //0x4A    J
    0x0E, 0x1E, 0x10, 0x10, 0x1F, 0x0F, 0x00,
    0x08, 0xF8, 0xF8, 0x80, 0xC0, 0x78, 0x38, //0x4B    K
    0x10, 0x1F, 0x1F, 0x01, 0x03, 0x1E, 0x1C,
    0x08, 0xF8, 0xF8, 0x08, 0x00, 0x00, 0x00, //0x4C    L
    0x10, 0x1F, 0x1F, 0x10, 0x10, 0x18, 0x1C,
    0xF8, 0xF8, 0x70, 0xE0, 0x70, 0xF8, 0xF8, //0x4D    M
    0x1F, 0x1F, 0x00, 0x00, 0x00, 0x1F, 0x1F,
    0xF8, 0xF8, 0x70, 0xE0, 0xC0, 0xF8, 0xF8, //0x4E    N
    0x1F, 0x1F, 0x00, 0x00, 0x01, 0x1F, 0x1F,
    0xF0, 0xF8, 0x08, 0x08, 0x08, 0xF8, 0xF0, //0x4F    O
    0x0F, 0x1F, 0x10, 0x10, 0x10, 0x1F, 0x0F,
    0x08, 0xF8, 0xF8, 0x88, 0x88, 0xF8, 0x70, //0x50    P
    0x10, 0x1F, 0x1F, 0x10, 0x00, 0x00, 0x00,
    0xF0, 0xF8, 0x08, 0x08, 0x08, 0xF8, 0xF0, //0x51    Q
    0x0F, 0x1F, 0x10, 0x1C, 0x78, 0x7F, 0x4F,
    0x08, 0xF8, 0xF8, 0x88, 0x88, 0xF8, 0x70, //0x52    R
    0x10, 0x1F, 0x1F, 0x00, 0x01, 0x1F, 0x1E,
    0x30, 0x78, 0xC8, 0x88, 0x88, 0x38, 0x30, //0x53    S
    0x0C, 0x1C, 0x10, 0x10, 0x11, 0x1F, 0x0E,
    0x00, 0x38, 0x18, 0xF8, 0xF8, 0x18, 0x38, //0x54    T
    0x00, 0x00, 0x10, 0x1F, 0x1F, 0x10, 0x00,
    0xF8, 0xF8, 0x00, 0x00, 0x00, 0xF8, 0xF8, //0x55    U
    0x0F, 0x1F, 0x10, 0x10, 0x10, 0x1F, 0x0F,
    0xF8, 0xF8, 0x00, 0x00, 0x00, 0xF8, 0xF8, //0x56    V
    0x03, 0x07, 0x0C, 0x18, 0x0C, 0x07, 0x03,
    0xF8, 0xF8, 0x00, 0x80, 0x00, 0xF8, 0xF8, //0x57    W
    0x0F, 0x1F, 0x1C, 0x07, 0x1C, 0x1F, 0x0F,
    0x18, 0x78, 0xE0, 0xC0, 0xE0, 0x78, 0x18, //0x58    X
    0x18, 0x1E, 0x07, 0x03, 0x07, 0x1E, 0x18,
    0x00, 0x78, 0xF8, 0x80, 0x80, 0xF8, 0x78, //0x59    Y
    0x00, 0x00, 0x10, 0x1F, 0x1F, 0x10, 0x00,
    0x38, 0x18, 0x08, 0x88, 0xC8, 0x78, 0x38, //0x5A    Z
    0x1C, 0x1E, 0x13, 0x11, 0x10, 0x18, 0x1C,
    0x00, 0x00, 0xF8, 0xF8, 0x08, 0x08, 0x00, //0x5B    [
    0x00, 0x00, 0x1F, 0x1F, 0x10, 0x10, 0x00,
    0x70, 0xE0, 0xC0, 0x80, 0x00, 0x00, 0x00, //0x5C
    0x00, 0x00, 0x01, 0x03, 0x07, 0x0E, 0x1C,
    0x00, 0x08, 0x08, 0xF8, 0xF8, 0x00, 0x00, //0x5D    ]
    0x00, 0x10, 0x10, 0x1F, 0x1F, 0x00, 0x00,
    0x10, 0x18, 0x0C, 0x06, 0x0C, 0x18, 0x10, //0x5E    ^
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, //0x5F    _
    0x40, 0x40, 0x40, 0x40, 0x40, 0x40, 0x40,
    0x00, 0x00, 0x06, 0x0C, 0x08, 0x00, 0x00, //0x60    `
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x40, 0x40, 0x40, 0xC0, 0x80, 0x00, //0x61    a
    0x0E, 0x1F, 0x11, 0x11, 0x0F, 0x1F, 0x10,
    0x08, 0xF8, 0xF8, 0x40, 0xC0, 0x80, 0x00, //0x62    b
    0x00, 0x1F, 0x1F, 0x10, 0x10, 0x1F, 0x0F,
    0x80, 0xC0, 0x40, 0x40, 0x40, 0xC0, 0x80, //0x63    c
    0x0F, 0x1F, 0x10, 0x10, 0x10, 0x18, 0x08,
    0x00, 0x80, 0xC0, 0x48, 0xF8, 0xF8, 0x00, //0x64    d
    0x0F, 0x1F, 0x10, 0x10, 0x0F, 0x1F, 0x10,
    0x80, 0xC0, 0x40, 0x40, 0x40, 0xC0, 0x80, //0x65    e
    0x0F, 0x1F, 0x11, 0x11, 0x11, 0x19, 0x09,
    0x80, 0xF0, 0xF8, 0x88, 0x18, 0x30, 0x00, //0x66    f
    0x10, 0x1F, 0x1F, 0x10, 0x00, 0x00, 0x00,
    0x80, 0xC0, 0x40, 0x40, 0x80, 0xC0, 0x40, //0x67    g
    0x4F, 0xDF, 0x90, 0x90, 0xFF, 0x7F, 0x00,
    0x08, 0xF8, 0xF8, 0x80, 0x40, 0xC0, 0x80, //0x68    h
    0x10, 0x1F, 0x1F, 0x00, 0x00, 0x1F, 0x1F,
    0x00, 0x40, 0xD8, 0xD8, 0x00, 0x00, 0x00, //0x69    i
    0x00, 0x10, 0x1F, 0x1F, 0x10, 0x00, 0x00,
    0x00, 0x00, 0x00, 0x40, 0xD8, 0xD8, 0x00, //0x6A    j
    0x60, 0xE0, 0x80, 0x80, 0xFF, 0x7F, 0x00,
    0x08, 0xF8, 0xF8, 0x00, 0x80, 0xC0, 0x40, //0x6B    k
    0x10, 0x1F, 0x1F, 0x03, 0x07, 0x1C, 0x18,
    0x00, 0x08, 0xF8, 0xF8, 0x00, 0x00, 0x00, //0x6C    l
    0x00, 0x10, 0x1F, 0x1F, 0x10, 0x00, 0x00,
    0xC0, 0xC0, 0xC0, 0x80, 0xC0, 0xC0, 0x80, //0x6D    m
    0x1F, 0x1F, 0x00, 0x0F, 0x00, 0x1F, 0x1F,
    0x40, 0xC0, 0x80, 0x40, 0x40, 0xC0, 0x80, //0x6E    n
    0x00, 0x1F, 0x1F, 0x00, 0x00, 0x1F, 0x1F,
    0x80, 0xC0, 0x40, 0x40, 0x40, 0xC0, 0x80, //0x6F    o
    0x0F, 0x1F, 0x10, 0x10, 0x10, 0x1F, 0x0F,
    0x40, 0xC0, 0x80, 0x40, 0x40, 0xC0, 0x80, //0x70    p
    0x80, 0xFF, 0xFF, 0x90, 0x10, 0x1F, 0x0F,
    0x80, 0xC0, 0x40, 0x40, 0x80, 0xC0, 0x40, //0x71    q
    0x0F, 0x1F, 0x10, 0x90, 0xFF, 0xFF, 0x80,
    0x40, 0xC0, 0x80, 0xC0, 0x40, 0xC0, 0x80, //0x72    r
    0x10, 0x1F, 0x1F, 0x10, 0x00, 0x00, 0x00,
    0x80, 0xC0, 0x40, 0x40, 0x40, 0xC0, 0x80, //0x73    s
    0x08, 0x19, 0x13, 0x12, 0x16, 0x1C, 0x08,
    0x40, 0x40, 0xF0, 0xF8, 0x40, 0x40, 0x00, //0x74    t
    0x00, 0x00, 0x0F, 0x1F, 0x10, 0x18, 0x08,
    0xC0, 0xC0, 0x00, 0x00, 0xC0, 0xC0, 0x00, //0x75    u
    0x0F, 0x1F, 0x10, 0x10, 0x0F, 0x1F, 0x10,
    0xC0, 0xC0, 0x00, 0x00, 0xC0, 0xC0, 0x00, //0x76    v
    0x07, 0x0F, 0x18, 0x18, 0x0F, 0x07, 0x00,
    0xC0, 0xC0, 0x00, 0x00, 0x00, 0xC0, 0xC0, //0x77    w
    0x0F, 0x1F, 0x18, 0x0F, 0x18, 0x1F, 0x0F,
    0x40, 0xC0, 0x80, 0x00, 0x80, 0xC0, 0x40, //0x78    x
    0x10, 0x18, 0x0F, 0x0E, 0x0F, 0x18, 0x10,
    0xC0, 0xC0, 0x00, 0x00, 0x00, 0xC0, 0xC0, //0x79    y
    0x8F, 0x9F, 0x90, 0x90, 0xD0, 0x7F, 0x3F,
    0xC0, 0xC0, 0x40, 0x40, 0xC0, 0xC0, 0x40, //0x7A    z
    0x18, 0x1C, 0x16, 0x13, 0x11, 0x18, 0x18,
    0x80, 0x80, 0xF0, 0x78, 0x08, 0x08, 0x00, //0x7B    {
    0x00, 0x00, 0x0F, 0x1F, 0x10, 0x10, 0x00,
    0x00, 0x00, 0x78, 0x78, 0x00, 0x00, 0x00, //0x7C    |
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x08, 0x08, 0x78, 0xF0, 0x80, 0x80, 0x00, //0x7D    }
    0x10, 0x10, 0x1F, 0x0F, 0x00, 0x00, 0x00,
    0x20, 0x30, 0x10, 0x30, 0x20, 0x30, 0x10, //0x7E    ~
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
    0x00, 0x01, 0x71, 0x09, 0x05, 0x03, 0x00, //0x7F    DEL
    0x00, 0x7F, 0x09, 0x09, 0x09, 0x01, 0x00
};
