

UI macro  ;entering user name 
stay:

clearscreen 


setcursor 13,22

mov ah,09
mov dx,offset msg2
int 21h

setcursor 7,25
     
mov ah,09
mov dx,offset msg1
int 21h

setcursor 8,32

mov ah,0ah
mov dx,offset buffer1
int 21h

mov bx,offset buffer1
mov al,[bx+2]
;1st char in [bx+2]
mov si,offset CharArr1
mov di,offset CharArr2

mov cx,26
 
myloop1:cmp al,[si]
       jz nextA 
       inc si
       dec cx
       jnz myloop1
mov cx,26
myloop2:cmp al,[di]
       jz nextA 
       inc di
       dec cx
       jnz myloop2
       jmp stay  

nextA:
clearscreen 
mainscreen
  endm 
  
  clearscreen macro
    mov ah,06
    mov al,00
    mov bh,07
    mov ch,00
    mov cl,00
    mov dh,24
    mov dl,79
    int 10h   
    endm
 setcursor macro row,col
    mov ah,02
    mov al,00
    mov bh,00
    mov dh,row
    mov dl,col
    int 10h  
    endm 

 mainscreen macro
 setcursor 7,25   
 mov ah,09
 mov dx,offset msg4
 int 21h      
 
 setcursor 8,25
 mov ah,09
 mov dx,offset msg5
 int 21h      
 
 setcursor 9,25    
 mov ah,09
 mov dx,offset msg6
 int 21h 
 
 endm


 drawline macro ocount,incount,col,row,color   ;this macro draw lines(vetical or horizontal)
    local myloop1,myloop2
      
    mov bh,ocount
    mov bl,incount
    mov dx,row
    mov cx,col
    
      myloop1:
       myloop2:
         mov ah,0ch 
         mov al,color  ;color
         int 10h
         inc dx
         dec bl
         cmp bl,0
         jnz myloop2
     inc cx
     mov dx,row
     mov bl,incount
     dec bh
     jnz myloop1       
 endm 
 

 
 drawcir macro cenx,ceny,raduis,colour  ;this macro draw circle
     local myloop10,myloop9,draw,over
     
       
     mov dx,raduis
     mov rad1,dx
     SHL rad1,1  ;double rad
     mov ax,rad1
     mov temp4,ax
     mov rad2,dx
     SHL rad2,1  ;double rad
     mov temp3,dx
         
    
     
     mov ax,temp3
     mul ax
     
     mov temp3,ax
             
     mov dx,cenx 
     sub dx,raduis
     
     mov cx,ceny
     sub cx,raduis
      
     mov temp2,cx
                 
     myloop10:
       myloop9:    
         ;check
         mov temp1,dx
         
         mov ax,dx
         sub ax,cenx
         mul ax
         mov bx,ax
         
         mov ax,cx
         sub ax,ceny
         mul ax
               
         mov dx,temp1
               
         add ax,bx  
             
         cmp ax,temp3    
         ;cmp ax,sqr
         jz draw      
         jnc over        
         
    draw:mov ah,0ch 
         mov al,colour
         int 10h
    over:inc cx
         dec rad1
         cmp rad1,0
         jnz myloop9
     inc dx
     mov cx,temp2
     mov ax,temp4
     mov rad1,ax
     dec rad2
     jnz myloop10
          
    endm
   .model small
   .stack 64
   .data
;interface
msg1 db 'please enter your name','$'
buffer1 db 16,?,16 dup(?)
 
CharArr1 db  'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
CharArr2 db 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z' 
msg2 db 'please enter key to continue','$'
;to do : put the three msgs in one msg 
 msg4 db 'to start chatting press f1','$'
 msg5 db 'to start game press f2','$'
 msg6 db 'to start end the program press ESC','$'
;Game
 CurrentTime db 0
 NextTime db 0
 speed db ? ;ball speed 
 VerticalFlag dw 0 ;45 degree: up=0 down=1    30 degree: up=2 down=3
HorizFlag dw  1 ;45 degree: right=1 left=0    30 degree: left=2 right=3
 centx dw 62
 centy dw 100
 rad   dw 15 
 row1  dw 50 
 col1  dw 50 
 row2  dw 50  
 col2  dw 260
 value  dw ?
 counter EQU 10     
 ;these are variables for drawcir macro 
 temp1 dw ?    ;hold dx
 temp2 dw ?    ;hold cx
 temp3 dw ?    ;hold rad
 rad1  dw ?    ;inner loop
 temp4 dw ?    ;hold inner
 rad2  dw ?    ;outer loop
 
   .code
 main proc far
     mov ax,@data
     mov ds,ax
;inter face--------------------------------------     
UI
mainscreen
myloop4: mov ah,1  ;to continue until press right key
             int 16h   
             jz myloop4     
             mov ah,0
             int 16H
             cmp al,'e' ;F2 2Eh
             jz clear
             cmp al,1BH  ;ESC
             jz escape
            jmp myloop4  
escape:
mov ax,4c00h
int 21h
     
;game------------------------------------------
   clear : clearscreen
     mov ah,0     ;change to graphic mode
     mov al,13h
     int 10h 

        drawline 7,70,col1,row1,0Ah      ;ocount,incount,col,row,color  ->this draw left stick
     drawline 7,70,col2,row2,0Ah;                              ->this draw right stick
     drawline 7,200,0,0,80         ;                              ->this draw left frame
     drawline 7,200,313,0,80       ;                              ->this draw right frame 
         

   MAIN_LOOP:      
      
;kero------>start
 drawcir centy,centx,5,00  ;cenx,ceny,raduis,colour
mov ah,2ch
int 21h
cmp CurrentTime,dl
je Again1

; Change in ball direction conditions---->start

cmp centx,255
jne next3
mov HorizFlag,0
next3:

cmp centy,5
jne next4
mov VerticalFlag ,1
mov HorizFlag ,3
next4:
cmp centy,195
jne next7
mov VerticalFlag,0
again1:
jmp Again
;this handles movment in 30 degrees

next7:
cmp VerticalFlag,2
je Up2
cmp VerticalFlag,3
je Down2 
jmp next6

Down2: add centy,2
jmp next6
Up2 : sub centy,2
next6 :
cmp HorizFlag,2
je Left2
cmp HorizFlag,3
je Right2

jmp next5
Right2:add centx,2
jmp next5
Left2:sub centx,2

next5:

;this handles movment 45 degree

next2 :
cmp VerticalFlag,0
je Up
cmp VerticalFlag,1
je Down 

Down: inc centy
jmp next
Up : dec centy
next :
cmp HorizFlag,0
je Left
cmp HorizFlag,1
je Right

Right:inc centx
jmp Again
Left:dec centx

;change in ball direction conditions--->end
Again: 
mov CurrentTime , dl


drawcir centy,centx,5,15  ;cenx,ceny,raduis,colour
;kero------>end

;Dina --->start
 

MY_LOOP:

mov ah,1
int 16h 

cmp ah,72
jz MoveUp 
cmp al,65h
jz MoveUp22
cmp ah,80
jz MoveDown
cmp al,64h
jz MoveDown22    
jmp MAIN_LOOP

  
MoveUp:

call FlushKeyBuffer 
cmp row1 , 00 
je MY_LOOP
call MoveUP1     

jmp MAIN_LOOP

MoveUp22: 
call FlushKeyBuffer
cmp row2 , 00 
je MY_LOOP
call MoveUP2

jmp MAIN_LOOP
MoveDown:
call FlushKeyBuffer
cmp row1 , 130 
je MY_LOOP
call MoveDOWN1  
jmp MAIN_LOOP

MoveDown22:
call FlushKeyBuffer
cmp row2 , 130 
je MY_LOOP
call MoveDOWN2
jmp MAIN_LOOP
 main endp





 MoveUP1 proc  
     drawline 7,70,col1,row1,00h      ;ocount,incount,col,row,color  ->this draw left stick
     drawline 7,70,col2,row2,00h
     mov bx , offset row1
   mov ax , [bx]
     sub ax , 10 
     mov [bx] ,ax               
     drawline 7,70,col1,row1,0Ah      ;ocount,incount,col,row,color  ->this draw left stick
     drawline 7,70,col2,row2,0Ah 
     ret
     MoveUP1 endp     

MoveDOWN2 proc 
     drawline 7,70,col1,row1,00h      ;ocount,incount,col,row,color  ->this draw left stick
     drawline 7,70,col2,row2,00h
     mov bx , offset row2   
     mov ax , [bx]
     add ax , 10 
     mov [bx] ,ax        
     drawline 7,70,col1,row1,0Ah      ;ocount,incount,col,row,color  ->this draw left stick
     drawline 7,70,col2,row2,0Ah 
     ret   
  MoveDOWN2  endp 
         
 MoveDOWN1 proc        
          drawline 7,70,col1,row1,00h      ;ocount,incount,col,row,color  ->this draw left stick
     drawline 7,70,col2,row2,00h
     mov bx , offset row1
    mov ax , [bx]
     add ax , 10 
     mov [bx] ,ax                
     drawline 7,70,col1,row1,0Ah      ;ocount,incount,col,row,color  ->this draw left stick
     drawline 7,70,col2,row2,0Ah  
     ret
  MoveDOWN1  endp 

 MoveUP2 proc 
     drawline 7,70,col1,row1,00h      ;ocount,incount,col,row,color  ->this draw left stick
     drawline 7,70,col2,row2,00h
     mov bx , offset row2
     mov ax , [bx]
     sub ax , 10  
    mov [bx] ,ax             
     drawline 7,70,col1,row1,0Ah      ;ocount,incount,col,row,color  ->this draw left stick
     drawline 7,70,col2,row2,0Ah 
     ret    
  MoveUP2  endp 

FlushKeyBuffer proc
mov ah,0ch   ;remove key pressed from buffer
mov al,0
int 21h  
ret
FlushKeyBuffer endp     
;Dina --->end
     

          end main
     
     