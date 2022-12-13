
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 1234h
MOV BX, 5678h 
MOV CX, 9ABCh
MOV SP, 0100h

PUSH AX
PUSH BX
XCHG AX,CX
POP CX
PUSH AX
POP BX


ret




