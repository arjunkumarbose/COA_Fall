.MODEL SMALL
.STACK 100H
.DATA 

M1 DB 'Welcome To my calculator!!',0DH, 0AH, '$'
M2 DB 'Please user Enter Digit 1 :',0DH,0AH, '$'
M3 DB 0DH,0AH, 'Please User Enter Digit 2 :',0DH,0AH, '$'
M4 DB 0DH,0AH, 'Output: ', 0DH, 0AH,'$'  
M5 DB 0DH,0AH, 'Thank You for using my Calculator$'

.CODE  
 MAIN PROC
     MOV AX,@DATA 
     MOV DS,AX  
     
     LEA DX,M1 
     MOV AH,09H
     INT 21H 
     
     LEA DX,M2 
     MOV AH,09H
     INT 21H  
        
     MOV AH,01H 
     INT 21H
     MOV BL,AL
               
     LEA DX,M3 
     MOV AH,09H
     INT 21H  
        
     MOV AH,01H 
     INT 21H
     MOV BH,AL
     
     CALL TASK 
     
     LEA DX,M5 
     MOV AH,09H
     INT 21H 
 
     MOV AH,4CH
     INT 21H 
     MAIN ENDP 

TASK PROC      
     ADD BH,BL  
     SUB BH,30H
     LEA DX,M4 
     MOV AH,09H
     INT 21H
     
     MOV AH,2
     MOV DL,BH
     INT 21H
     
     TASK ENDP     
END MAIN