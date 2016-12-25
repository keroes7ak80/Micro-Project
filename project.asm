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
jmp D8
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
mov ax,row1
mov bx,row1
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
;-------------------------------------------------------------------------end of ballmovment macro

prtmyname macro   ;------------------------>this macro print mysuername

	mov bx,offset buffer1
   sub cl,cl
    mov cl,[bx+1] ;number of char of myuserName
    inc bx
    inc bx

	printtuserme:
    mov ah,2
     mov dl,[bx]
     int 21h
     inc bx
    dec cl
    jnz printtuserme
	endm



UI macro 
stay:
;----------clear screen
   mov ah,06
    mov al,00
    mov bh,07
    mov ch,00
    mov cl,00
    mov dh,24
    mov dl,79
    int 10h  


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
mov al,[bx]+2
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
myloop3:cmp al,[di]
       jz nextA 
       inc di
       dec cx
       jnz myloop3
       jmp stay  

nextA:
mov di,offset usernameMe
mov bx,offset buffer1
sub ax,ax
mov cl,[bx]+1 ;number of char of myuserName
mov si,offset usernameMe
inc si
inc si
inc bx
inc bx       
sub ax,ax
myloop:
  mov al,[di]+1
  inc al
  inc al
  mov [di]+1,al
  sub al,al  
  mov al,[bx]
  mov [si],al
  inc si
  mov al,'?'
  mov [si],al
  inc si
  inc bx
  dec cx
  jnz myloop
 
dec si 
mov al,'#'
mov [si],al
 
endm

 ;--------------------------------------------------------------------end of ui macro 
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
;-----------------------------------------------end of clear screen macro
 setcursor macro row,col
    mov ah,02
    mov al,00
    mov bh,00
    mov dh,row
    mov dl,col
    int 10h  
    endm 
;-------------------------------------------end of setcursor macro
 mainscreen macro
 setcursor 22,0
;draw center line
        mov cx,80
 myloopp2:
         mov ah,02
         mov dl,'-'
         int 21h
         dec cx
         jnz myloopp2
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


;-----------------------------------------------------------------------------end of main screen macro

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
 ;----------------------------------------------------------------------end of drawlin macro 
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
;--------------------------------------------------------end of draw circle macro

;---------------------------------------->printuser2 macro start
	printuser2name macro
	local printuser2
	mov bx,offset user2
sub cl,cl
mov cl,[bx+1] ;number of char of myuserName
inc cl
 inc bx
 inc bx

	printuser2:
    mov ah,2
     mov dl,[bx]
     int 21h
     inc bx
    dec cl
    jnz printuser2
	endm
;------------------------------------------->printuser2 macro end

   .model small
   .stack 64
   .data
;interface
msg1 db 'please enter your name','$'
buffer1 db 16,?,16 dup(?)
user2 db 17,?,17 dup(?)

ScurentX db 0
ScurentY db 0
RcurentX db 0
RcurentY db 12
char1 db ?

 countrec db 0
countsend db 0
counttemp db 0

;start for notification
usernameMe db 40,?,40 dup(?)
usernameHim db 40,?,40 dup(?)
;end for notification

 
CharArr1 db  'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'
CharArr2 db 'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z' 
msg2 db 'please enter key to continue','$'
;to do : put the three msgs in one msg 
 msg4 db 'to start chatting press C','$'
 msg5 db 'to start game press G','$'
 msg6 db 'to end the program press ESC','$'
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

 ;----------------------------------
 charsent db '?'    ;must be different at the beggining
charrec db '#'

maxSend db ? 

 msgrr db 'out','$'
receivegame db 'sent you a game invitation , to accept press G','$'
receivechat db 'sent you a chat invitation , to accept press C','$'
 char db ?

 notificationChat db 'You sent a chat invitation to','$'
 notificationGame db 'You sent a game invitation to','$'

 endmsg1 db ' has just left :(','$'
 endmsg2 db ' please try again with another partener','$'
 leavemsg db ' wait you again :)','$'


charu db ?    ;character of the user2
chartemp db ?

 ;---------------------variables for the score
 score1 db 0
 score2 db 0
 endx1 dw ?
 endx2 dw ?
 ballx1 dw ?
 ballx2 dw ?
 maxscore dw ?
 endg  db 'End of game','$'
 winword db ' wins','$'

 ;-------------------------------scrore


   .code
 main proc far
     mov ax,@data
     mov ds,ax
;inter face--------------------------------------     
UI
;------------------------------------------------------------------------------------------------------------------------>sneding and reciving names start
loopsendrec:

 mov dx,3fdh                   ;///////////////////////////////////////////if there is something to recieve
in al,dx
test al,00000001b
jz send

startrec:mov di,offset usernameHim
	inc di
	inc di
	mov si,offset usernameHim
	inc si
looprec:

mov dx,3f8h
in al,dx



mov dx,3f8h
out dx,al

cmp [di],al
jz  cont
inc di
mov [di],al
mov al,[si]
inc al
mov [si],al

cont:mov ah,1
cmp [si],ah
jz looprec

cmp al,'#'
jnz looprec

mov cx,500
sendend:
mov dx,3f8h
out dx,al
dec cx
jnz sendend


mov countrec,1
cmp countsend,1
jnz send

jmp goheere
;mov ah,4ch
;int 21h

send:mov countsend,1
mov bx,offset usernameMe
mov cl,[bx+1]

inc bx
inc bx

loopsend:

sendChar:

 setcursor 10,10

 jmp n1
loopsendrec1: jmp startrec
n1:

mov dx,3f8h
mov al,[bx]
out dx,al

mov dx,3f8h     
in al,dx

cmp al,[bx]     ;receive seem
jnz sendChar

inc bx
dec cl
cmp cl,0
jnz loopsend

mov al,countrec
cmp al,0
jz loopsendrec1

goheere:mov di,offset user2
mov si,offset user2
inc si
mov bx,offset usernameHim
sub ax,ax
mov cl,[bx]+1 ;number of char of usernameHim
inc cl
inc di
inc di
inc bx
inc bx       
sub ax,ax
mylloop:  
  mov al,[bx]
  cmp al,'#'
  jz heeere
  cmp al,'?'
  jz heeere
  mov [di],al
  inc di
  mov ah,[si]
  inc ah
  mov [si],ah
  heeere:inc bx
  dec cx
  jnz mylloop
;-------------------------------------------------------------------------------------->sendin and reciving names end

staaart:mainscreen
setcursor 23,0
myloop4:     mov ah,1  ;to continue until press right key
             int 16h   
             jz receive1     
             mov ah,0
             int 16H
             cmp al,'G' ;F2 2Eh  game
             jnz senchat


			 mov dx,3f8h
             out dx,al    ;send game invit.


			 mov charsent,al
			 cmp al,charrec
			 jz accept


			  mov si,3680
              mov al,00
              mov ah,07
            mov cx,80
            ree:
           mov es:[si],al
           inc si
            mov es:[si],ah
           inc si
           dec cx
           jnz ree
		   setcursor 23,0

			 mov ah,09
             mov dx,offset notificationGame
             int 21h      
	         printuser2name
			 ;setcursor 24,0

			 n6:jmp n77
			 receive1:jmp receive 
			 n77:

			 accept:
			 jmp receive

			 senchat:cmp al,'C' ;F1 chat
             jnz exiit

			 
			 mov dx,3f8h
             out dx,al    ;send chat invit.

			 			 n89:jmp n9
			 myloop45:jmp myloop4 
			 n9:


			 mov charsent,al
			 cmp al,charrec
			 jz acceptt

			 
			  mov si,3680
              mov al,00
              mov ah,07
            mov cx,80
            reee:
           mov es:[si],al
           inc si
            mov es:[si],ah
           inc si
           dec cx
           jnz reee
		   setcursor 23,0

			 mov ah,09
             mov dx,offset notificationChat
             int 21h      
	         printuser2name
			 ;setcursor 24,0

			 acceptt:
			 jmp receive

			  
			 

             exiit:cmp al,1BH  ;ESC
             jnz receive
			 
			 mov dx,3f8h
             out dx,al    ;send end 

   			 clearscreen
             
			 setcursor 9,23

			 prtmyname

			 mov ah,09
             mov dx,offset leavemsg
             int 21h


			 mov ax,4c00h
             int 21h

			 receive: mov dx,3fdh
             in al,dx
             test al,00000001b
              jz checkk1
            mov dx,3f8h
            in al,dx

			  

			cmp al,1BH
			jnz game

			 clearscreen
             
			 setcursor 9,23

			 printuser2name

			 mov ah,09
             mov dx,offset endmsg1
             int 21h

			 setcursor 11,18

			 mov ah,09
             mov dx,offset endmsg2
             int 21h

			 mov ax,4c00h
             int 21h


			game:cmp al,'G'
			jnz chat

			
			nn:jmp nm
			 checkk1:jmp checkk 
			 nm:



			mov charrec,al
			 cmp al,charsent
			 jz accepttt


			 
			  mov si,3680
              mov al,00
              mov ah,07
            mov cx,80
            reeee:
           mov es:[si],al
           inc si
            mov es:[si],ah
           inc si
           dec cx
           jnz reeee
		   setcursor 23,0

			 printuser2name
			 

			 
			 mov ah,09
             mov dx,offset receivegame
             int 21h      
			 ;setcursor 24,0

			 n88:jmp n7
			 myloop44:jmp myloop45 
			 n7:


			 


		    accepttt:
	        jmp checkk


			chat:cmp al,'C'
			jnz myloop44

			mov charrec,al
			cmp al,charsent
			 jz checkk

			 
			  mov si,3680
              mov al,00
              mov ah,07
            mov cl,80
            reeeee:
           mov es:[si],al
           inc si
            mov es:[si],ah
           inc si
           dec cl
           jnz reeeee
		   setcursor 23,0


			 printuser2name
			 mov ah,09
             mov dx,offset receivechat
             int 21h      
			 ;setcursor 24,0
			
	        checkk:sub ax,ax
	        mov al,charsent
	        mov ah,charrec
            cmp al,ah
            jnz myloop44
	
	
	  mov al,charsent
	  cmp al,'G'
	  jz  gamee    ;jnz  startchat   lma ad5l el chat
	  call userschat                   ;--------------------------------------------------------------------->to do : yro7 l main screen when press ESC
     clearscreen

	  setcursor 22,0
;draw center line
        mov cx,80
 mylooppp2:
         mov ah,02
         mov dl,'-'
         int 21h
         dec cx
         jnz mylooppp2
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

 mov al,'?'
 mov charsent,al
 mov al,'#'
 mov charrec,al
 
	  jmp staaart


;game------------------------------------------
gamee:
      clearscreen
      mov ah,0     ;change to graphic mode
     mov al,13h
     int 10h 
	 jmp startgame

   clear :
	 ;--------------------------clearscreen in graphics mode
	 
    
    mov     cx, 10      ; column
    mov     dx, 10      ; row
    mov     al, 15      ; white
    mov     ah, 0ch     ; put pixel
    int     10h         ; draw pixel
   mov ax,0A000h
   mov es,ax 
    xor di,di
    xor ax,ax
	mov cx,32000d
    cld
    rep stosw
	 ;------------------------------clearscrean
	 mov ax, 55 
	 mov row1,ax
	 mov ax,50
	 mov col1,ax
	 mov ax,55
	 mov row2,ax
     mov ax,260
	 mov col2,ax
	 mov ax,170
	 mov centx,ax
	 mov ax,120
	 mov centy,ax

startgame:
      drawline BarWid,BarLen,col1,row1,0Ah      ;ocount,incount,col,row,color  ->this draw left stick
     drawline  BarWid,BarLen,col2,row2,0Ah
     drawline 7,200,0,0,80         ;                              ->this draw left frame
     drawline 7,200,313,0,80       ;                              ->this draw right frame 
     drawline 255,3,30,140,80
	 ;;----------------------------------------------------------------------------------printing score
		 setcursor 20,3
		mov di,offset buffer1
		inc di
	    mov cx,0
		mov cl,[di]
		inc di
		printmyname:
		mov ah, 0eh           ;0eh = 14
        mov al,[di]
        xor bx, bx            ;Page number zero
        mov bl, 0ch          ;Color is red
		int 10h
		inc di
		dec cx
		jnz printmyname

		mov ah, 0eh           ;0eh = 14
        mov al,':' 
        xor bx, bx            ;Page number zero
        mov bl, 0ch           ;Color is red
		int 10h
	   mov ch,score1
	   add ch,'0'

	pscore:	mov ah, 0eh           ;0eh = 14
        mov al,ch 
        xor bx, bx            ;Page number zero
        mov bl, 0ch           ;Color is red
		int 10h
		;-------------------------------------------
 setcursor 20,70
	   mov di,offset user2
	    inc di
	   mov cx,0
		mov cl,[di]
		inc di
		printname:
		mov ah, 0eh           ;0eh = 14
        mov al,[di]
        xor bx, bx            ;Page number zero
        mov bl, 0ch          ;Color is red
		int 10h
		inc di
		dec cx
		jnz printname

		mov ah, 0eh           ;0eh = 14
        mov al,':' 
        xor bx, bx            ;Page number zero
        mov bl, 0ch           ;Color is red
		int 10h
	   mov ch,score2
	   add ch,'0'

    	mov ah, 0eh           ;0eh = 14
        mov al,ch 
        xor bx, bx            ;Page number zero
        mov bl, 0ch           ;Color is red
		int 10h
 
;-------------------------------------------------------------------------------------printing score
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
;jmp MAIN_LOOP
jmp playing

  
MoveUp:

call FlushKeyBuffer 
cmp row1 , 00 
je MY_LOOP
call MoveUP1     

;jmp MAIN_LOOP
jmp playing

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
;jmp MAIN_LOOP
jmp playing

MoveDown22:
call FlushKeyBuffer
cmp row2 , 100 
je MY_LOOP
call MoveDOWN2
;jmp MAIN_LOOP
jmp playing

;--------------------------------------------------------------------------------------------------score start
playing:
mov ax,BarWid   ;the width of the stick

mov bx,col1
sub bx,ax
mov endx1,bx   ; ----------- the position  of the  leftstick 

mov bx,col2
add bx,ax
mov endx2,bx             ;----------------the position of the rightstick

mov ax,rad     ; the radius of the ball 
mov bx,centx
add bx,ax
mov ballx1,bx           ;--------------the right end of the ball

mov bx,centx
sub bx,ax
mov ballx2,bx           ;-----------------the left end of the ball 

player1:
cmp ballx2,55
ja player2                   ; if greater than 55 check otherside
mov ax,ballx1
;mov bx,endx1
;add ax,15                ;yb2a fi fr2 shwya
;cmp bx,ax                 ; dh aw dh ---------------------->walaa
mov bx,40
cmp bx,ax
ja  s                    ;score
jmp  MAIN_LOOP          ; continue the game
s:add score2,1
jmp scores                   ;check if there is a winner

player2:
cmp ballx1,285
ja pass2                         ;it passed the stick
jmp  MAIN_LOOP                       ;-----------------cont the game
pass2: add score1,1

scores:
mov al,score1
add al,score2
cmp al,5
je stop
jmp clear              ; startgame
stop:                    ;game over

   
	mov al,03
	mov ah,0   ;change to textmode
	int 10h

	 setcursor 12,35
	mov ah,9
	mov dx,offset endg
	int 21h

	 setcursor 14,35
 mov cl,score1
 cmp cl,score2
 ja printme                ;i win else othe user
 printuser2name         print the other user name                
 jmp pwin
 printme:
 mov bx,offset buffer1
 inc bx
 mov cx,0
 mov cl,[bx]
 inc bx
 iwin: 
  mov ah,2
  mov dl,[bx]
   int 21h
   inc bx
   dec cx
jnz iwin

pwin:
mov ah,9
	mov dx,offset winword
	int 21h

;---------------------------------------------------------------------------------------------------score end


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

userschat proc 

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

setcursor 11,0
    

;draw center line
        mov cx,80
 myloop2:
         mov ah,02
         mov dl,'-'
         int 21h
         dec cx
         jnz myloop2

setcursor 22,0
        mov cx,80
 lastline:
         mov ah,02
         mov dl,'-'
         int 21h
         dec cx
         jnz lastline
     

agaain:
setcursor   ScurentY,ScurentX

mov ah,1
int 16h
jnz contag
jmp nnext                   ;--->jump out ofrange    walaaaa
contag:
mov ah,0
int 16h

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
cmp al,1bh
jne sen
jmp oot                      ;--->walaaaa,,,,jumpout of range
sen:
mov cl , ScurentX
mov ch , ScurentY
add cl, 1
cmp cl , 80
jb con
mov cl , 0
add ch , 1
con: mov ScurentX , cl
mov ScurentY , ch
;mov ScurentY  ,ch

;--------------------walaaaa
cmp ch,11
jnz setingcursor
 mov ax,0b800h 
        mov es,ax
		mov di,0
		mov si,160

scrollS:
 mov ax,es:[si]
 mov es:[di],ax
 inc di
 inc di
 inc si 
 inc si
 cmp si,1760
 jnz scrollS

 mov si,1600
 mov al,00
 mov ah,07
 mov cx,80
 re:
 mov es:[si],al
 inc si
 mov es:[si],ah
 inc si
 dec cx
 jnz re

 mov cl,0
 mov ch,10
 mov ScurentY , ch
 ;----------------------------------->walaaaaaaaaa
 setingcursor:          
    mov ah,02     ;------------>setcursor
    mov al,00
    mov bh,00
    mov dx,cx
   ; mov dl,cl
    int 10h 


nnext:
setcursor   RcurentY,RcurentX
;mov ch , RcurentY
;add ch, 1
;mov RcurentY  ,ch

mov dx,3fdh
in al,dx
test al,00000001b
jnz rec                  ;;;;walaaaa-------->3'yrt hena jmp out of range
jmp agaain
rec:
mov dx,3f8h
in al,dx

cmp al,1bh
jz oot

mov dl,al
mov ah,02
int 21h
mov cl , RcurentX
mov ch , RcurentY
add cl, 1
mov RcurentX , cl
cmp cl , 80
jb con2
mov cl , 0
add ch , 1
con2: mov RcurentX , cl
mov RcurentY , ch
;mov RcurentY  ,ch

cmp ch,21
jnz scursor
 mov ax,0b800h 
 mov es,ax
 mov di,1920
 mov si,2080

scrollR:
 mov ax,es:[si]
 mov es:[di],ax
 inc di
 inc di
 inc si 
 inc si
 cmp si,3360
 jnz scrollR

 mov si,3200
 mov ah,07
 mov al,00
 mov cx,80
 r:
 mov es:[si],al
 inc si
 mov es:[si],ah
 inc si
 dec cx
 jnz r

 mov cl,0
 mov ch,20
 mov RcurentY , ch

scursor:    mov ah,02
    mov al,00
    mov bh,00
    mov dx,cx
 ;   mov dl,cl
    int 10h 
jmp agaain


oot:
RET

userschat endp
          end main
     
     