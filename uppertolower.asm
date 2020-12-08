.model small
.stack 100h
.data
a db 'Upper form $'
b db 'Lower form $'

.code
main proc
    mov ax,@data    ; initialize data
    mov ds,ax
    
    mov ah,9       ; show message of a
    lea dx,a
    int 21h
    
    mov ah,1         ; Take input
    int 21h
    mov bl,al
    
    
    mov ah,2          ; new line
    mov dl,10
    int 21h
    mov dl,13
    int 21h   
    
    mov ah,9         ; show message of b
    lea dx,b
    int 21h
    
    or bl, 20h      ; upper case to lower
    
    
    mov ah,2          ; show output 
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    