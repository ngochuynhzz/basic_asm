.model small
.stack 100h
.code
main proc
    mov ah, 02h
    mov cx, 26
    mov dl, 65
    print_loop:
    int 21h
    inc dl
    dec cx
    jnz print_loop
    mov ah, 4ch
    int 21h
   main endp
end main