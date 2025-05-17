.MODEL SMALL
.STACK 100H
.DATA
    TB1 DB "Nhap vao mot ky tu: $"
    TB2 DB 13, 10, "Ky tu da nhap la chu$"
    TB3 DB 13, 10, "Ky tu da nhap la so$"
    TB4 DB 13, 10, "Ky tu da nhap khac chu/so$"
    CHAR DB ?        

.CODE
MAIN PROC
    MOV AX, @DATA   
    MOV DS, AX
    
    
    LEA DX, TB1
    MOV AH, 09H
    INT 21H
    
    
    MOV AH, 01H     
    INT 21H
    MOV CHAR, AL    
 
    MOV AL, CHAR
    CMP AL, 'A'     
    JL CHECK_DIGIT  
    CMP AL, 'Z'     
    JLE PRINT_CHAR  
    CMP AL, 'a'     
    JL CHECK_DIGIT  
    CMP AL, 'z'     
    JLE PRINT_CHAR  

CHECK_DIGIT:
    
    MOV AL, CHAR
    CMP AL, '0'     
    JL PRINT_OTHER  
    CMP AL, '9'     
    JLE PRINT_DIGIT 

PRINT_OTHER:
   
    LEA DX, TB4
    MOV AH, 09H
    INT 21H
    JMP END_PROGRAM

PRINT_CHAR:
    
    LEA DX, TB2
    MOV AH, 09H
    INT 21H
    JMP END_PROGRAM

PRINT_DIGIT:
    
    LEA DX, TB3
    MOV AH, 09H
    INT 21H

END_PROGRAM:
    
    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN