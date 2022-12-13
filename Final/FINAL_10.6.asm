.MODEL SMALL
.STACK 100H
.DATA 

M1 DB 'Please enter a (small) Letter :',0DH, 0AH, '$'
M2 DB 0DH,0AH,'Output:', 0DH,0AH, '$'  

.CODE  
MAIN PROC
     MOV AX,@DATA 
     MOV DS,AX  
     
     LEA DX,M1 
     MOV AH,09H
     INT 21H  
     
     MOV AH,01H 
     INT 21H
     MOV BL,AL
     
     CALL TASK
 
     EXIT:
     MOV AH,4CH
     INT 21H 
     MAIN ENDP 

TASK PROC      
     XOR BL,00100000b
     LEA DX,MSG2 
     MOV AH,09H
     INT 21H
     
     MOV AH,2
     MOV DL,BL
     INT 21H
     
     TASK ENDP     
END MAIN
