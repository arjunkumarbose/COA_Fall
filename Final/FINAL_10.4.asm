.MODEL SMALL
.STACK 100H
.DATA 

M0 DB "Welcome User! $"
M1 DB 0DH,0AH, "Please User Enter Letter 1:", 0DH, 0AH,"$"
M2 DB 0DH,0AH, "Please User Enter Letter 2:", 0DH, 0AH,"$"
M3 DB 0DH,0AH, "Please User Enter Letter 3:", 0DH, 0AH,"$"
M4 DB 0DH,0AH, "Output: ", 0DH, 0AH,"$"

IN1 DB ?
IN2 DB ?
IN3 DB ?

.CODE 

MAIN PROC
     MOV AX,@DATA
     MOV DS,AX
     
     LEA DX,M0
     MOV AH,09H
     INT 21H 
           
     LEA DX,M1
     MOV AH,09H
     INT 21H 
     
     MOV AH,1
     INT 21H
     MOV IN1,AL
            
     LEA DX,M2
     MOV AH,09H
     INT 21H 
     
     MOV AH,1
     INT 21H
     MOV IN2,AL
     
     LEA DX,M3
     MOV AH,09H
     INT 21H 
     
     MOV AH,1
     INT 21H
     MOV IN3,AL
          
     CALL TASK                     
     MOV AH,4CH
     INT 21H
     MAIN ENDP    

TASK PROC
     LEA DX,M4
     MOV AH,09H
     INT 21H
         
     MOV AH,2 
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
     MOV DL,IN1
     INT 21H 
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
     
     MOV AH,2
     MOV DL,IN2
     INT 21H 
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
     
     MOV AH,2
     MOV DL,IN3
     INT 21H 
     MOV DL,0AH
     INT 21H
     MOV DL,0DH
     INT 21H
     
     TASK ENDP
END MAIN