.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DW "Hi, I am from Main Procedure $"
MSG2 DW "Hi, I am from Second Procedure $"

.CODE 

MAIN PROC
     MOV AX, @DATA
     MOV DS, AX
     
     LEA DX, MSG1
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 2
     MOV DX, 0AH
     INT 21H
     MOV DX, 0DH
     INT 21H 
     
     CALL SECOND
     
     CALL SECOND2
     
     MOV AH, 4CH
     INT 21H
     MAIN ENDP

SECOND PROC
     
     LEA DX, MSG2
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 2
     MOV DX, 0AH
     INT 21H
     MOV DX, 0DH
     INT 21H
     SECOND ENDP

SECOND2 PROC
     
     LEA DX, MSG2
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 2
     MOV DX, 0AH
     INT 21H
     MOV DX, 0DH
     INT 21H
     SECOND2 ENDP

END MAIN
