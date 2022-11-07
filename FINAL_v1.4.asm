.model small
.stack 100h
.code
main proc
    
mov cx, 50
mov ah, 1
int 21h
mov bl, al  

top: 
    mov ah,2
    mov dl,bl
    int 21h
    loop top
    
exit:
    mov ah,4ch
    int 21h
        
main endp
end main
