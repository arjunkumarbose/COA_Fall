.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    
    MOV AH,1
    XOR CX,CX          ;res   
    
    INPUT: 
        INT 21H   
        CMP AL,0DH
        JE EXIT_INPUT     
        
        PUSH AX        
        INC CX        ;inc counter
        JMP INPUT 
    
    EXIT_INPUT:    
    MOV AH,2          ;else full AH push
    
    OUTPUT:    
    POP DX            ;DX e DL=AX; AH=DH; DL - PRINT
    INT 21H
    
    LOOP OUTPUT
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN
