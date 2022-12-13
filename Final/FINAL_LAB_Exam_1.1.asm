.MODEL SMALL
.STACK 100H
.DATA 

M1 DB "ENTER A BINARY NUMBER: $"
M2 DB 0AH,0DH, "NUMBER IS: * EVEN * $"
M3 DB 0AH,0DH, "NUMBER IS: * ODD * $"

.CODE 
MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, M1
     MOV AH, 09H
     INT 21H
     
     MOV CX,4 
     
     INPUTS:
     MOV AH, 1
     INT 21H
     MOV BL, AL      
     LOOP INPUTS
     
     PRINT:
     CMP BL,31H
     JE ODD
     JMP EVEN
     
     EVEN:
     LEA DX, M2
     MOV AH, 09H
     INT 21H
     
     ODD: 
     LEA DX, M3
     MOV AH, 09H
     INT 21H
     
     JMP EXIT
    
     EXIT:               
     MOV AH, 4CH
     INT 21H
     
     MAIN ENDP    
END MAIN