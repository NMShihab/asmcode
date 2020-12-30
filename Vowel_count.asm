.model small
.stack 100h
.data
    prompt db "Enter string: $ "
    result db 0ah,0dh, "Vowal : $"

.code

main proc
    mov ax, @data
    mov ds,ax
    
    mov ah,9
    lea dx,prompt
    int 21h
    
    mov bl, 0 
    
    
    mov ah,1
    int 21h
    
    while:
        cmp al,0dh
        je endl
        
        cmp al, 'a'
        je count 
        cmp al, 'A'
        je count
        cmp al, 'e'
        je count  
        cmp al, 'E'
        je count 
        cmp al, 'i'
        je count
        cmp al, 'I'
        je count
        cmp al, 'o'
        je count 
        cmp al, 'O'
        je count
        cmp al, 'u'
        je count  
        cmp al, 'U'
        je count 
         
         up:
         
         int 21h
         
         jmp while
        
            count:
            inc bl
            
            jmp up
        
        
        endl:
        mov ah,9
        lea dx,result
        int 21h      
        
        mov ah,2
        mov dl,bl
        add dl,30h
        int 21h
        
  endp