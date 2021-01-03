.MODEL
.STACK
.DATA

A DB ?
B DB ?
C DB '1ST DIGIT : $'
D DB 10,13, '2ND DIGIT : $'
E DB 10,13,'RESULT: $'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,9
    LEA DX,C
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV A,AL 
    
    MOV AH,9
    LEA DX,D
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,48
    MOV B,AL 
    
    MOV AH,9
    LEA DX,E
    INT 21H
    
    MOV AL,A
    MUL B
    
    MOV AH,2
    ADD AL,48
    MOV DL,AL
    
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP

END MAIN
    
    