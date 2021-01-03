
.MODEL SMALL
.STACK 100H
.DATA
NUM1 DB ?
NUM2 DB ?
RESULT DB ?
MSG1 DB 10,13,"ENTER FIRST NUMBER : $"
MSG2 DB 10,13,"ENTER SECOND NUMBER : $"
MSG3 DB 10,13,"RETURNS : $"

.CODE 

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,MSG1
    MOV AH,9
    INT 21H
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM1,AL
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM2,AL
    MUL NUM1
    
   
     
    MOV BX,15
    CMP AX,BX
    JG Greater
       
    
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H
    MOV DL,'0' 
    MOV AH,2
    INT 21H  
    MOV AH,4CH
    INT 21H 
    
    Greater:
        LEA DX,MSG3
        MOV AH,9
        INT 21H
        MOV DL,'1' 
        MOV AH,2
        INT 21H 
        MOV AH,4CH
        INT 21H
    
MAIN ENDP
END MAIN




