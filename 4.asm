.model small
.stack 100h
.data
    mgs1 db 'Nhap vao mot ky tu: $',13, 10
    mgs2 db 13, 10, 'Ky tu dung truoc la: $'
    mgs3 db 13, 10, 'Ky tu dung sau la: $'
    input db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    lea dx, mgs1
    mov ah, 09h
    int 21h
    
    mov ah, 01h
    int 21h
    mov input, al
    
    mov al, input
    dec al
    mov dl, al
    
    lea dx, mgs2
    mov ah, 09h
    int 21h
    mov ah, 02h
    int 21h
    
    mov al, input
    inc al
    mov dl, al
    
    lea dx, mgs3
    mov ah, 09h
    int 21h
    mov ah, 02h
    int 21h
    
    mov ah, 4Ch
    int 21h
main endp
end main