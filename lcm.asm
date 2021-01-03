 data segment
    n1 dw 4  
    n2 dw 3
    
    gcd dw ?
    lcm dw ?
    
 data ends  
 
 assume cs:code, ds:data
 
 code segment
    start:
        mov ax,data
        mov ds,ax
        mov ax,n1
        mov bx,n2 
        
    compare:
        cmp ax,bx
        je ans
        jb swap
    
    division:
        mov dx,0
        div bx
        cmp dx,0
        je ans
        mov ax,dx
        jmp compare 
    
    swap:
        xchg ax,bx
        jmp division
    ans:
        mov gcd,bx
        mov ax,n1
        mov bx,n2
        mul bx
        div gcd
        mov lcm,ax 
        
        mov ah,2  
        mov dl,lcm 
        int 21h 
        
        mov ah,4ch
        int 21h
 code ends
 end start
    