.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
    MOV AX, -1
    CMP AX,0 
    MOV AH,2
    
    JL LESS
    MOV DL, 30H
    JMP DISPLAY
    
    LESS:
    MOV BX, 2DH
    MOV DX, BX
    INT 21H
    MOV BX, 31H
    
    DISPLAY:
    MOV DX, BX
    INT 21H
    

EXIT:
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
