.model small
.stack 100h 
.data
MSG1 DW 'Enter character: $'    
A DB ?


.code
main proc    
    mov ax, @data
    mov ds, ax

    lea dx, MSG1
    mov ah, 09h
    int 21h
    
   
        
    mov ah, 1
    int 21h
    mov bl, al
    
    
    mov ah, 1
    int 21h
    mov A, al 
    
    mov ah,2
    mov dx, 0ah
    int 21h
    mov dx, 0dh
    int 21h
    
    cmp A, bl
    JLE IF1
    JG IF2  

  
    IF1: 
    mov ah,2
    mov dl, A
    int 21h
    mov dl, bl
    int 21h
    
    jmp exit
    
    IF2:
    mov ah,2
    mov dl, bl
    int 21h
    mov dl, A
    int 21h
    
    jmp exit
        
    exit:
    mov ah,4ch
    int 21h
            
    main endp
end main