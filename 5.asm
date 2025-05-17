.MODEL SMALL
.STACK 100H

.DATA
    msg1 DB 'Nhap ky tu thu nhat: $', 13, 10
    msg2 DB 13, 10, 'Nhap ky tu thu hai: $'
    msg3 DB 13, 10, 'Tong ma ASCII la: $'
    char DB 0Dh, 0Ah, '$'

.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX

   
    LEA DX, msg1
    MOV AH, 09H
    INT 21H

    MOV AH, 01H
    INT 21H
    MOV BL, AL  

  
    LEA DX, msg2
    MOV AH, 09H
    INT 21H

    
    MOV AH, 01H
    INT 21H
    MOV BH, AL   

 
    MOV AL, BL
    ADD AL, BH   
    
    LEA DX, char
    MOV AH, 09H
    INT 21H

    LEA DX, msg3
    MOV AH, 09H
    INT 21H

    
    ADD AL, 30H  
    MOV DL, AL
    MOV AH, 02H  
    INT 21H

    MOV AH, 4CH
    INT 21H
MAIN ENDP
END MAIN
