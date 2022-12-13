.MODEL SMALL
.STACK 100H
.DATA 

M1 DB 'Welcome to my calculator!!',0DH, 0AH, '$'
M2 DB 'Please enter a Hex Digit (A-F) : $'
M3 DB 0DH,0AH,'In Decimal it is : $'   
M4 DB 0DH, 0AH, 'Thank You for using my Calculator',0DH,0AH,'$'
M5 DB 'Have a good day',0DH,0AH,'$'
M6 DB 0DH, 0AH, 'Error!$'
 
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
     
     CALL TASK
     
     EXIT_:
     LEA DX,M6 
     MOV AH,09H
     INT 21H 
 
     EXIT:
     MOV AH,4CH
     INT 21H 
     MAIN ENDP 

TASK PROC      
     CMP BX,'A'
     JGE IF
     JL EXIT_
       
     IF: 
     CMP BX,'F'
     JLE IF2
     JG EXIT_
     
     IF2:
     LEA DX,M3 
     MOV AH,09H
     INT 21H 
     
     MOV AH,02H 
     MOV DL,31H
     INT 21H
     
     SUB BL,11H 
     MOV DL,BL 
     INT 21H 
     
     LEA DX,M4 
     MOV AH,09H
     INT 21H
     
     LEA DX,M5 
     MOV AH,09H
     INT 21H  
     JMP EXIT
     
     TASK ENDP     
END MAIN