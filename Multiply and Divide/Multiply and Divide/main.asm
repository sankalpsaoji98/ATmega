
.CSEG
LDI ZL,LOW(NUM<<1)
LDI ZH,HIGH(NUM<<1)
LDI XL, 0x01
LDI XH, 00
LDI YL, 0x02
LDI YH, 00
LPM R16, Z+
LPM R17, Z+
LPM R18, Z+
LPM R19, Z+
LPM R20, Z
MUL R16, R17
ST X, R0
START: SUB R18, R19
INC R20
CP R18, R19
BRCC START
ST Y, R20

NOP
NUM: .db 0x13, 0x12, 0x0D, 0x03, 0x00