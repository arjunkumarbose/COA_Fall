.MODEL SMALL
.STACK 100H
.DATA 

M1 DB "TYPE A CHARACTER: $"
M2 DB 0DH,0AH,"THE ASCII CODE OF $"
M3 DB " IN BINARY IS: $" 
M4 DB 0DH,0AH,"THE NUMBER OF 1 BIT IS $"
.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, M1
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 1
     INT 21H
     
     XOR BX, BX
     MOV BL, AL     
     LEA DX, M2
     MOV AH,09H
     INT 21H
     
     MOV DL,BL
     MOV AH, 2
     INT 21H
     
     LEA DX, M3
     MOV AH, 09H
     INT 21H
     
     CALL TASK 
                    
     MOV AH, 4CH
     INT 21H
     
     MAIN ENDP

TASK PROC  
     MOV CX, 8
     MOV BH, 0
     
     BINARY:     
     SHL BL,1
     JNC ZERO 
     INC BH
     MOV DL, 31H ;conv bin 1
     JMP DISPLAY
     
     ZERO:     
     MOV DL, 30H ;conv bin 0
     
     DISPLAY:
     MOV AH,2 
     INT 21H
     
     LOOP BINARY     
     ADD BH, 30H     
     LEA DX, M4
     MOV AH,9
     INT 21H
     
     MOV DL, BH
     MOV AH, 2
     INT 21H 
     
     TASK ENDP
END MAIN