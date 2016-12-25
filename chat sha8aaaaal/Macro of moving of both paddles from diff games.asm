    .model small
    .stack 64
    .data
char1 db ?
    .code

main proc far
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


again:

mov col1,al
MOV DX,3fdh
check:
in al,dx
test al,00100000b
jz check

mov dx,3f8h
mov al,col1
out dx,al

next:
mov dx,3fdh
in al,dx
test al,00000001b
jz again
mov dx,3f8h
in al,dx

mov col1,al


;mov dl, 'r'
;mov ah,02
;int 21h
jmp again

exit:
mov ah,4ch
int 21h
 main endp
 end main
      

     
     
  