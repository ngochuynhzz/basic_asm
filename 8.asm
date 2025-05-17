.model small
.stack 100h
.data
    str db "LT-ASM"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov dh, 1
    mov dl, 10
    mov ah, 02h
    int 10h
    
    mov dl, str[0]
    mov ah, 02h
    int 21h
    
    mov dh, 2
    mov dl, 10
    mov ah, 02h
    int 10h
    
    mov dl, str[1]
    mov ah, 02h
    int 21h
    
    mov dh, 3
    mov dl, 10
    mov ah, 02h
    int 10h
    
    mov dl, str[2]
    mov ah, 02h
    int 21h  
    
    mov dh, 4
    mov dl, 10
    mov ah, 02h
    int 10h
    
    mov dl, str[3]
    mov ah, 02h
    int 21h  
    
    mov dh, 5
    mov dl, 10
    mov ah, 02h
    int 10h
    
    mov dl, str[4]
    mov ah, 02h
    int 21h   
                
    mov dh, 6
    mov dl, 10
    mov ah, 02h
    int 10h
    
    mov dl, str[5]
    mov ah, 02h
    int 21h   
    
    mov ah, 4Ch
    int 21h
main endp
end main