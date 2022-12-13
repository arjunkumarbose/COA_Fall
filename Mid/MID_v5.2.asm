.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
    MOV AL,0
  
  CMP AL,0
  JL DISP 
  JGE ELSE  
  JMP EXIT
  
  DISP:
  MOV AH,255 
  JMP EXIT
  
  ELSE:
  MOV AH,0     

EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN