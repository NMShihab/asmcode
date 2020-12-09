.MODEL SMALL
.STACK 100H
.DATA
A DB 'Enter integer 1:  $'
B DB 0DH, 0AH, 'Enter integer 2: $' 
C DB 0DH, 0AH, 'Diff of the Integers: $' 

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,A
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    
    MOV AH,9
    LEA DX,B
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB BL,AL 
    ADD BL,48 
    
    
    
    MOV AH,9
    LEA DX,C
    INT 21H
    
    MOV AH,2 
    MOV DL,BL
    INT 21H
    
    
   
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN