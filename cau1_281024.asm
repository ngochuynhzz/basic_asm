.MODEL SMALL
.STACK
.DATA
    TB1 DB 13,10,'NHAP KY TU: $'
    TB2 DB 13,10,'KY TU DUOC CHUYEN:'
    LUU DB 13,10,?,'$'
    TB3 DB 13,10,'KHONG LA KY TU$'
.CODE

MAIN PROC

START:
    MOV AX,@DATA
    MOV DS,AX
    
    ;IN THONG BAO 1 
    LEA DX,TB1
    MOV AH,9H
    INT 21H
    
    ;NHAP KY TU TU BAN PHIM LUU VAO THANG GHI AL
    MOV AH,1h
    INT 21H

; KIEM TRA CHU HOA
HOA:
    CMP AL,'A'
    JL KHAC
    
    CMP AL,'Z'
    JG THUONG
    
    ADD AL,20H
    JMP PRINT

;KIEM TRA CHU THUONG
THUONG:
    CMP AL,'a'
    JL KHAC
    
    CMP AL,'z'
    JG KHAC
    
    SUB AL,20H
    JMP PRINT

KHAC: 
    LEA DX,TB3
    MOV AH,9H
    INT 21H
    ;JMP EXIT
    JMP START

PRINT: 
   
    ;CMP AL,'Q'
    ;JE EXIT
    
    MOV LUU,AL
    LEA DX,TB2
    MOV AH,9H
    INT 21H 
    
    JMP START

EXIT:
    MOV AH,4CH
    INT 21H
MAIN ENDP
END MAIN

