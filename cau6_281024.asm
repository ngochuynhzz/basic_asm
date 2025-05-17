.model small
.stack 100h
.data
    tb1 db "Chon bit can dich phai (1/2/3) so 25(00100101) $"
    tb2 db 13,10, "Ket qua: $"
    number db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov number, 25h
    
    lea dx, tb1
    mov ah, 9h
    int 21h
    
    mov ah, 1h
    int 21h
    
    cmp al, "1"
    je shr1
    cmp al, "2"
    je shr2
    cmp al, "3"
    je shr3
    
    shr1:
    shr number, 1
    lea dx, tb1
    mov ah, 9h
    int 21h
    jmp for
    shr2:
    shr number, 2
    lea dx, tb1
    mov ah, 9h
    int 21h
    jmp for
    shr3:
    shr number, 3
    lea dx, tb1
    mov ah, 9h
    int 21h
    jmp for
    for:
    mov cx, 8
    mov ah, 2
    print:
    rol number, 1
    jnc bito
    mov dl, "1"
    jmp next
    bito:
    mov dl, "0"
    next:
    int 21h
    loop print
    mov ah, 4ch
    int 21h
    main endp
end main