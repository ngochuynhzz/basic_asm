.model small
.stack 100h
.data
    dong db ?
    cot db ?
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 40
    mov dong, 01h
    mov cot, 01h
    
    lap:
        mov ah, 2
        mov dh, dong
        mov dl, cot
        int 10h
        
        mov dl, "A"
        mov ah, 2
        int 21h
        
        mov ah, 2
        mov dh, dong
        mov dl, cot
        int 10h
        
        mov dl, " "
        mov ah, 2
        int 21h
        
        inc cot
        loop lap
        
        mov ah, 4ch
        int 21h
main endp
end main
     