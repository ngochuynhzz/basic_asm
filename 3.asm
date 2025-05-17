.model small
.stack 100h
.data
    str1 db "Nhap vao mot ky tu: $"
    str2 db 13, 10, "Ky tu hoa la: $"
    char db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, str1
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    
    sub al, 20h
    mov char, al
    
    lea dx, str2
    mov ah,09h
    int 21h
    
    mov dl, char
    mov ah, 02h
    int 21h   
    
    mov ah, 4Ch
    int 21h
main endp
end main