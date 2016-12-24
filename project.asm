
BallMovement macro

;top of screen
cmp centy,4
jz A1
jmp D1
A1:
;30 up -> -30 down
cmp  VerticalFlag,0
jnz B1
cmp HorizFlag,3
jnz B1
mov VerticalFlag ,1
mov HorizFlag,3 
B1:
;-30 up -> 30 down
cmp  VerticalFlag,0
jnz B2
cmp HorizFlag,2
jnz B2
mov VerticalFlag ,1
mov HorizFlag,2 
B2:
;45 up -> -45 down 
cmp  VerticalFlag,0
jnz B3
cmp HorizFlag,1
jnz B3
mov VerticalFlag ,1
mov HorizFlag,1 
B3:
;-45 up -> 45 down 
cmp  VerticalFlag,0
jnz B4
cmp HorizFlag,0
jnz B4
mov VerticalFlag ,1
mov HorizFlag,0 
B4:

D1:
;--------------el lables 8alaaaaat------------ 
;Bottom of screen 
cmp centy,136
jz A2
jmp D2
A2:
;30 down -> -30 up
cmp  VerticalFlag,1
jnz B5
cmp HorizFlag,3
jnz B5
mov VerticalFlag ,0
mov HorizFlag,3 
B5:
;-30 down -> 30 up
cmp  VerticalFlag,1
jnz B6
cmp HorizFlag,2
jnz B6
mov VerticalFlag ,0
mov HorizFlag,2 
B6:
;45 down -> -45 up 
cmp  VerticalFlag,1
jnz B7
cmp HorizFlag,1
jnz B7
mov VerticalFlag ,0
mov HorizFlag,1 
B7:
;-45 down -> 45 up 
cmp  VerticalFlag,1
jnz B8
cmp HorizFlag,0
jnz B8
mov VerticalFlag ,0
mov HorizFlag,0 
B8:
 
D2:


;left paddle
;compare col1+BarWidth+rad 
cmp centx , 58
jz A3
jmp D3
A3:
;center of the paddle "compare row1+20 (2/3)"
mov ax,row1
mov bx,row1
add ax,10
add bx,20
cmp centy,ax
ja E1
jmp D4
E1:
cmp centy,bx
jb C1 
jmp D4
C1:
;0 left -> 0 right --------------------hayt8ar fel right---------------------
cmp  VerticalFlag,4
jnz B9
cmp HorizFlag,0
jnz B9
mov VerticalFlag ,4
mov HorizFlag,1 
B9:

;45 up -> -45 up 
cmp  VerticalFlag,0
jnz B10
cmp HorizFlag,0
jnz B10
mov VerticalFlag ,0
mov HorizFlag,1 
B10:

;-45 down -> 45 down 
cmp  VerticalFlag,1
jnz B11
cmp HorizFlag,0
jnz B11
mov VerticalFlag ,1
mov HorizFlag,1 
B11:

;30 up -> -30 up 
cmp  VerticalFlag,0
jnz B12
cmp HorizFlag,2
jnz B12
mov VerticalFlag ,0
mov HorizFlag,3 
B12:

;-30 down -> 30 down 
cmp  VerticalFlag,1
jnz B13
cmp HorizFlag,2
jnz B13
mov VerticalFlag ,1
mov HorizFlag,3 
B13:

D4:

;Top of paddle ---------------------
mov ax,row1
mov bx,row1
add bx,10
cmp centy,ax
ja E2
jmp D5
E2:
cmp centy,bx
jb C2 
jmp D5
C2:


cmp  VerticalFlag,4
jnz B14
cmp HorizFlag,0
jnz B14
mov VerticalFlag ,1
mov HorizFlag, 1
B14:

;45 up -> -45 up 
cmp  VerticalFlag,1
jnz B15
cmp HorizFlag,0
jnz B15
mov VerticalFlag ,1
mov HorizFlag,3 
B15:

;-45 down -> 45 down 
cmp  VerticalFlag,0
jnz B16
cmp HorizFlag,0
jnz B16
mov VerticalFlag ,0
mov HorizFlag,3 
B16:

;30 up -> -30 up 
cmp  VerticalFlag,1
jnz B17
cmp HorizFlag,2
jnz B17
mov VerticalFlag ,4
mov HorizFlag,1 
B17:

;-30 down -> 30 down 
cmp  VerticalFlag,0
jnz B18
cmp HorizFlag,2
jnz B18
mov VerticalFlag ,4
mov HorizFlag,1 
B18:


D5:

;Bottom of paddle 
mov ax,row1
mov bx,row1
add ax,20
add bx,30
cmp centy,ax
ja E3
jmp D6
E3:
cmp centy,bx
jb C3
jmp D6
C3:


cmp  VerticalFlag,4
jnz B19
cmp HorizFlag,0
jnz B19
mov VerticalFlag ,0
mov HorizFlag, 1
B19:

;45 up -> -45 up 
cmp  VerticalFlag,0
jnz B20
cmp HorizFlag,0
jnz B20
mov VerticalFlag ,0
mov HorizFlag,3 
B20:

;-45 down -> 45 down 
cmp  VerticalFlag,1
jnz B21
cmp HorizFlag,0
jnz B21
mov VerticalFlag ,1
mov HorizFlag,3 
B21:

;30 up -> -30 up 
cmp  VerticalFlag,0
jnz B22
cmp HorizFlag,2
jnz B22
mov VerticalFlag ,4
mov HorizFlag,1 
B22:

;-30 down -> 30 down 
cmp  VerticalFlag,1
jnz B23
cmp HorizFlag,2
jnz B23
mov VerticalFlag ,4
mov HorizFlag,1 
B23:

D6:
D3:



;Right paddle-------------------------------------Right----------Right
;compare col2+BarWidth+rad 
cmp centx , 256
jz A4
jmp D7
A4:
;center of the paddle "compare row1+20 (2/3)"
mov ax,row2
mov bx,row2
add ax,10
add bx,20
cmp centy,ax
ja E4
jmp D9
E4:
cmp centy,bx
jb C4 
jmp D9
C4:
;0 left -> 0 right --------------------hayt8ar fel right---------------------
cmp  VerticalFlag,4
jnz B24
cmp HorizFlag,1
jnz B24
mov VerticalFlag ,4
mov HorizFlag,0 
B24:

;45 up -> -45 up 
cmp  VerticalFlag,0
jnz B25
cmp HorizFlag,1
jnz B25
mov VerticalFlag ,0
mov HorizFlag,0 
B25:

;-45 down -> 45 down 
cmp  VerticalFlag,1
jnz B26
cmp HorizFlag,1
jnz B26
mov VerticalFlag ,1
mov HorizFlag,0 
B26:

;30 up -> -30 up 
cmp  VerticalFlag,0
jnz B27
cmp HorizFlag,3
jnz B27
mov VerticalFlag ,0
mov HorizFlag,2
B27:

;-30 down -> 30 down 
cmp  VerticalFlag,1
jnz B28
cmp HorizFlag,3
jnz B28
mov VerticalFlag ,1
mov HorizFlag,2 
B28:

D9:

;Top of paddle ---------------------
mov ax,row2
mov bx,row2
add bx,10
cmp centy,ax
ja E5
jmp D8
E5:
cmp centy,bx
jb C5 
jmp D8
C5:


cmp  VerticalFlag,4
jnz B29
cmp HorizFlag,1
jnz B29
mov VerticalFlag ,1
mov HorizFlag, 0
B29:

;45 up -> -45 up 
cmp  VerticalFlag,1
jnz B30
cmp HorizFlag,1
jnz B30
mov VerticalFlag ,1
mov HorizFlag,2 
B30:

;-45 down -> 45 down 
cmp  VerticalFlag,0
jnz B31
cmp HorizFlag,1
jnz B31
mov VerticalFlag ,0
mov HorizFlag,2 
B31:

;30 up -> -30 up 
cmp  VerticalFlag,1
jnz B32
cmp HorizFlag,3
jnz B32
mov VerticalFlag ,4
mov HorizFlag,0 
B32:

;-30 down -> 30 down 
cmp  VerticalFlag,0
jnz B33
cmp HorizFlag,3
jnz B33
mov VerticalFlag ,4
mov HorizFlag,0 
B33:


D8:

;Bottom of paddle 
mov ax,row2
mov bx,row2
add ax,20
add bx,30
cmp centy,ax
ja E6
jmp D10
E6:
cmp centy,bx
jb C6
jmp D10
C6:


cmp  VerticalFlag,4
jnz B34
cmp HorizFlag,1
jnz B34
mov VerticalFlag ,0
mov HorizFlag, 0
B34:

;45 up -> -45 up 
cmp  VerticalFlag,0
jnz B35
cmp HorizFlag,1
jnz B35
mov VerticalFlag ,0
mov HorizFlag,2 
B35:

;-45 down -> 45 down 
cmp  VerticalFlag,1
jnz B36
cmp HorizFlag,1
jnz B36
mov VerticalFlag ,1
mov HorizFlag,2 
B36:

;30 up -> -30 up 
cmp  VerticalFlag,0
jnz B37
cmp HorizFlag,3
jnz B37
mov VerticalFlag ,4
mov HorizFlag,0 
B37:

;-30 down -> 30 down 
cmp  VerticalFlag,1
jnz B38
cmp HorizFlag,3
jnz B38
mov VerticalFlag ,4
mov HorizFlag,0 
B38:

D10:


D7:
 endm 

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
 centx dw 170
 centy dw 120
 rad   dw 15 
 row1  dw 55 
 col1  dw 50 
 row2  dw 55  
 col2  dw 260
 BarLen db 30
 BarWid db 4
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

      drawline BarWid,BarLen,col1,row1,0Ah      ;ocount,incount,col,row,color  ->this draw left stick
     drawline  BarWid,BarLen,col2,row2,0Ah
     drawline 7,200,0,0,80         ;                              ->this draw left frame
     drawline 7,200,313,0,80       ;                              ->this draw right frame 
     drawline 255,3,30,140,80

   MAIN_LOOP:      
 BallMovement    
;kero------>start
 drawcir centy,centx,4,00  ;cenx,ceny,raduis,colour
mov ah,2ch
int 21h
cmp CurrentTime,dl
je Again1

; Change in ball direction conditions---->start

;cmp centx,255
;jne next3
;mov HorizFlag,0
;next3:

;cmp centy,5
;jne next4
;mov VerticalFlag ,1
;mov HorizFlag ,3
;next4:
;cmp centy,135
;jne next7
;mov VerticalFlag,0
jmp next7

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
Up2 : sub centy , 2
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
jmp next
Down: inc centy
jmp next
Up : dec centy
next :
cmp HorizFlag,0
je Left
cmp HorizFlag,1
je Right
jmp Again
Right:inc centx
jmp Again
Left:dec centx

;change in ball direction conditions--->end
Again: 
mov CurrentTime , dl


drawcir centy,centx,4,15  ;cenx,ceny,raduis,colour
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
cmp row1 , 100 
je MY_LOOP
call MoveDOWN1  
jmp MAIN_LOOP

MoveDown22:
call FlushKeyBuffer
cmp row2 , 100 
je MY_LOOP
call MoveDOWN2
jmp MAIN_LOOP
 main endp





 MoveUP1 proc  
     drawline BarWid,BarLen,col1,row1,00h      ;ocount,incount,col,row,color  ->this draw left stick
     drawline  BarWid,BarLen,col2,row2,00h
     mov bx , offset row1
   mov ax , [bx]
     sub ax , 10 
     mov [bx] ,ax               
     drawline  BarWid,BarLen,col1,row1,0Ah      ;ocount,incount,col,row,color  ->this draw left stick
     drawline  BarWid,BarLen,col2,row2,0Ah 
     ret
     MoveUP1 endp     

MoveDOWN2 proc 
     drawline  BarWid,BarLen,col1,row1,00h      ;ocount,incount,col,row,color  ->this draw left stick
     drawline  BarWid,BarLen,col2,row2,00h
     mov bx , offset row2   
     mov ax , [bx]
     add ax , 10 
     mov [bx] ,ax        
     drawline  BarWid,BarLen,col1,row1,0Ah      ;ocount,incount,col,row,color  ->this draw left stick
     drawline  BarWid,BarLen,col2,row2,0Ah 
     ret   
  MoveDOWN2  endp 
         
 MoveDOWN1 proc        
          drawline  BarWid,BarLen,col1,row1,00h      ;ocount,incount,col,row,color  ->this draw left stick
     drawline  BarWid,BarLen,col2,row2,00h
     mov bx , offset row1
    mov ax , [bx]
     add ax , 10 
     mov [bx] ,ax                
     drawline  BarWid,BarLen,col1,row1,0Ah      ;ocount,incount,col,row,color  ->this draw left stick
     drawline  BarWid,BarLen,col2,row2,0Ah  
     ret
  MoveDOWN1  endp 

 MoveUP2 proc 
     drawline  BarWid,BarLen,col1,row1,00h      ;ocount,incount,col,row,color  ->this draw left stick
     drawline  BarWid,BarLen,col2,row2,00h
     mov bx , offset row2
     mov ax , [bx]
     sub ax , 10  
    mov [bx] ,ax             
     drawline  BarWid,BarLen,col1,row1,0Ah      ;ocount,incount,col,row,color  ->this draw left stick
     drawline  BarWid,BarLen,col2,row2,0Ah 
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
     
     