.model small
.stack 100h
.data
    msg1 db 'Welcome to Assembly$', 13, 10
    msg2 db 13, 10, 'Lap trinh ASM $'
    msg3 db 13, 10, 'Lap trinh Assembly $'
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, msg1
    mov ah, 09h
    int 21h
    
    lea dx, msg2
    mov ah, 09h
    int 21h
    
    lea dx, msg3
    mov ah, 09h
    int 21h
    
    mov ah, 4Ch
    int 21h
main endp
end main 