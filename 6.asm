.model small
.stack 100h
.data
    msg db 'Nhap vao mot ky tu: $'
    char db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, msg
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    mov char, al
    
    mov ah, 02h
    mov bh, 0
    mov dh, 10
    mov dl, 9
    int 10h
    
    mov ah, 02h
    mov dl, char
    int 21h
    
    mov ah, 4Ch
    int 21h
main endp
end main