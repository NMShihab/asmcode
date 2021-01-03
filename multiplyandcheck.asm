
.MODEL SMALL 
.STACK 100H
.DATA
    C DB 'Enter the digit_1 : $'
    D DB 10,13, 'Enter the digit_2 : $' 
    E DB 10,13, 'result : $'
    
    A DB ?
    B DB ?
      
    
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
   
    MOV DL,AL
    
    INT 21H  
    
    MOV BL, 16
    SUB BL,48 
    
    CMP BL,DL
    
    JGE SHOW  
    
        MOV AH, 2                    ; display the character '@'.
        MOV DL, "0"
        INT 21H 
        
        MOV AH,4CH
        INT 21H   
        
        
       
       
       SHOW: 
          MOV AH, 2                    ; display the character '@'.
          MOV DL, "1"
          INT 21H  
     
     
      
           
            
    
    
    
    
   
    
    
MAIN ENDP
END MAIN