.model small
.stack 100h
.code

main proc
 
mov cx, 255
mov bx, 0

top:  
mov ah,2
mov dx,bx
int 21h
inc bx
dec cx
    
jnz top
jmp exit
    
exit:
mov ah,4ch
int 21h
        
main endp
end main
