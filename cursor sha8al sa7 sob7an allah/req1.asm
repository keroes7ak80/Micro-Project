setcursor macro row,col
    mov ah,02
    mov al,00
    mov bh,00
    mov dh,row
    mov dl,col
    int 10h  
    endm 
.model small
.stack 64
.data
cursorX db 0
cursorY db 14
char1 db ?
.code   
main proc far     
    mov ax,@data
    mov ds,ax
 mov ax,@data
     mov ds,ax
     
     mov dx,3fbh
     MOV Al,10000000b
     out dx,al

     mov dx,3f8h
     mov al,18h
     OUT DX,al

     MOV DX,3F9H
     mov al,00h
     OUT DX,al

     MOV DX,3fbH
     mov al,00011011b
     OUT DX,al

 ;clear screen
    mov ah,06
   mov al,00
    mov bh,07
    mov ch,00
    mov cl,00
    mov dh,24
    mov dl,79
    int 10h   

setcursor 12,0
    

;draw center line
        mov cx,80
 myloop2:
         mov ah,02
         mov dl,'-'
         int 21h
         dec cx
         jnz myloop2   

again:
  

mov ah,1
int 16h
jz next
mov ah,0
int 16h

cmp al,1bh
je exit

mov char1,al
MOV DX,3fdh
check:
in al,dx
test al,00100000b
jz check
;showing the charcter
mov dl,char1
mov ah,02
int 21h

mov dx,3f8h
mov al,char1
out dx,al

next:


mov dx,3fdh
in al,dx
test al,00000001b
jz again
mov dx,3f8h
in al,dx

mov dl,al
mov ah,02
int 21h

;mov dl, 'r'
;mov ah,02
;int 21h
jmp again

exit:
mov ah,4ch
int 21h

 main     endp
end main
