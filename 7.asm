.model small
.stack 100h
.data
    str db "assembly$"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dh, 15
    mov dl, 9
    mov ah, 02h
    int 10h
    
    lea dx, str
    mov ah, 09h
    int 21h
    
    mov ah, 4Ch
    int 21h
main endp
end main