.MODEL SMALL
.STACK 100H 
.DATA  

N DB '* ARNOB  *', 0ah, 0dh, '$'
Line1 DB '**********', 0AH,0DH, '$'
Line2 DB '*        *', 0AH,0DH, '$'
Line3 DB '**********', 0AH,0DH, '$'


.CODE
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
  
    
    LEA DX, Line1
    MOV AH, 09H
    INT 21H 
    
    LEA DX, Line2
    MOV AH, 09H
    INT 21H   
    INT 21H
    INT 21H 
      
    LEA DX, N
    MOV AH, 09H
    INT 21H    
    
    LEA DX, Line2
    MOV AH, 09H
    INT 21H   
    INT 21H
    INT 21H  
    INT 21H
    
    LEA DX, Line3
    MOV AH, 09H
    INT 21H 
    

 EXIT:
    
    MOV AH, 4CH
    INT 21H 
    MAIN ENDP  

END MAIN
    
    
