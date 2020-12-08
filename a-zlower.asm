.model small
.stack 100h
.data

a db 'Lower form $'

.code
main proc
    mov ax,@data    ; initialize data
    mov ds,ax
    
    mov ah,9       ; show message of a
    lea dx,a
    int 21h    
    
    mov cx,26
    
    mov ah,2
    mov dl,97     ; for upper case 97 will be 65
    
    @loop:
    int 21h
    inc dl
    dec cx
    
    jnz @loop
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    