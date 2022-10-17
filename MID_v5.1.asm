.MODEL SMALL
.STACK 100H
.DATA
A  DB ?
.CODE

MAIN PROC 
  MOV AH,1
  INT 21H 
  
  CMP AX,0
  JL DISP 
  JMP EXIT
  
  DISP:
  MOV BX,-1  
 
EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN