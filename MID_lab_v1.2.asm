.MODEL SMALL
.STACK 100H 
.DATA  

Asteric1 DB '**********', 0AH, 0DH, '$'
Asteric2 DB '*        *', 0AH,0DH, '$'
N DB '* ARNOB  *', 0ah, 0dh, '$'


.CODE
MAIN PROC 
    MOV AX, @DATA
    MOV DS, AX
  
    
    LEA DX, Asteric1
    MOV AH, 09H
    INT 21H 
    
    LEA DX, Asteric2
    MOV AH, 09H
    INT 21H   
    INT 21H
    INT 21H 
      
    LEA DX, N
    MOV AH, 09H
    INT 21H    
    
    LEA DX, Asteric2
    MOV AH, 09H
    INT 21H   
    INT 21H
    INT 21H  
    INT 21H
    
    LEA DX, Asteric1
    MOV AH, 09H
    INT 21H 
    

 EXIT:
    
    MOV AH, 4CH
    INT 21H 
    MAIN ENDP  

END MAIN
    
    
