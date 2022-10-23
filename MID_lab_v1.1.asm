.MODEL SMALL
.STACK 100H
.DATA 

MSG1 DB 'Enter the Hex Number from (A-F) : $'
MSG2 DB 0DH,0AH,'Decimal Number : $'

 
.CODE  

 MAIN PROC
     MOV AX, @DATA 
     MOV DS, AX  
     
     LEA DX, MSG1 
     MOV AH, 09H
     INT 21H   
     
     MOV AH, 01H 
     INT 21H
     MOV BL, AL   
     
     LEA DX, MSG2 
     MOV AH, 09H
     INT 21H 
     
     MOV AH, 02H 
     MOV DL, 31H
     INT 21H
     
     SUB BL, 11H 
     MOV DL, BL 
     INT 21H  
 
  EXIT:
    
    MOV AH, 4CH
    INT 21H 
    MAIN ENDP  

END MAIN