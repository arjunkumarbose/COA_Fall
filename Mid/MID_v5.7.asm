.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC   
    
    MOV AL,4    
    CMP AL,1
    JE DISP1 
    CMP AL,3
    JE DISP1
    
    CMP AL,2
    JE DISP2
    CMP AL,4 
    JE DISP2
    
    JMP EXIT
        
    DISP1:    
    MOV CX,6FH   ;0 HEX Ascii
    MOV AH,2
    MOV DX,CX
    INT 21H  
    JMP EXIT 
    
    DISP2:
    MOV CX,65H   ;e HEX Ascii
    MOV AH,2
    MOV DX,CX
    INT 21H
        
EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN