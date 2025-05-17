.model small
.stack 100h
.data
    str1 db "Nhap ky tu thu 1:$"
    continue db 13, 10, "Nam ky tu ke tiep la:$"
.code
main proc
   
    mov ax, @data
    mov ds, ax

    
    lea dx, str1
    mov ah, 09h
    int 21h

    
    mov ah, 01h
    int 21h
    mov bl, al  

    
    lea dx, continue
    mov ah, 09h
    int 21h

    
    mov cx, 5          
print_loop:
    inc bl             
    mov dl, bl         
    mov ah, 02h        
    int 21h            
    loop print_loop    

    
    mov ah, 4Ch        
    int 21h
main endp
end main
