.MODEL SMALL
.STACK 100H
.DATA

MSG DB 0AH,0DH, 'HELLO WORLD$'
MSG1 DB 0AH,0DH, 'BYE WORLD$'

.CODE

MAIN PROC
  MOV AX,@DATA
  MOV DS,AX
  MOV CX,5
  
  PRINT_LOOP:
  LEA DX,MSG,
  MOV AH,9
  INT 21H
  DEC CX
  JG PRINT_LOOP
  
  MOV AH,2
  MOV DL,0DH
  INT 21H
  MOV DL,0AH
  INT 21H
  
  LEA DX,MSG1,
  MOV AH,9
  INT 21H
  DEC CX
  
  EXIT:
  MOV AH,4CH
  INT 21H
  
  MAIN ENDP
END MAIN
