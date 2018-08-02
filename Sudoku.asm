
;Project 1- By Wli Akbar



.model tiny	
.data
	
.code	
	org 100h	
main proc

	

	
	


	
	mov al,10h		; video services/memory
	mov ah,00h
	int 10h
	

	mov ah, 06h		; clears the screen
	xor al, al
	xor cx, cx
	mov dx, 184Fh
	mov bh, 07h
	int 10h

	mov ah, 02h		; places the cursor in the top left
	mov bh, 0
	mov dh, 0
	mov dl, 0
	int 10h

	
	mov ah,09h
	mov bl,0ah
	mov cx,19
	int 10h
	mov dx, offset greet	;Greeting	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,0ah
	mov cx,36
	int 10h
	mov dx, offset inst	;instruction	
	mov ah, 9
	int 21h
	
	mov ah,09h
	mov bl,0ah
	mov cx,38
	int 10h
	mov dx, offset inst2	;instruction next line	
	mov ah, 9
	int 21h
	

	mov ah,09h
	mov bl,07h
	mov cx,40
	int 10h
	mov dx, offset solu	;solution	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,07h
	mov cx,27
	int 10h
	mov dx, offset solu2	;solution next line	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,0ah
	mov cx,38
	int 10h
	mov dx, offset quit	;exit game	
	mov ah, 9
	int 21h

	
	mov dl,10 	;skip line
	mov ah,2
	int 21h
	mov dl,13
	mov ah, 2
	int 21h
	
	;creating the sudoko board

	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset div1	;first division row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset frow	;first row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset srow	;second row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset trow	;third row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset sdiv	;second division row	
	mov ah, 9
	int 21h
	
	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset forow	;fourth row	
	mov ah, 9
	int 21h
	
	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset firow	;fifth row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset sirow	;sixth row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset tdiv	;third division row	
	mov ah, 9
	int 21h
	
	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset serow	;seventh row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset erow	;eighth row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset nrow	;ninth row	
	mov ah, 9
	int 21h
	
	mov ah,09h
	mov bl,4
	mov cx,25
	int 10h
	mov dx, offset ldiv	;fourth division row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,07h
	mov cx,4
	int 10h
	mov dx, offset quit2	;place mark to quit at the end	
	mov ah, 9
	int 21h

	;mov ch,6
	;mov cl,4
	;mov ah,01h 
	;int 10h

;	mov ah, 02h
;	mov bh, 0
;	mov dh, 0
;	mov dl, 0
;	int 10h



; movements that the user can make to play
	
	menu:
	
   	mov ah, 00h
    	int 16h

	cmp al, 31h   ;Number 1
	jz one

	cmp al, 32h   ;Number 2
	je two

	cmp al, 33h   ;Number 3
	je three

	cmp al, 34h   ;Number 4
	je four

	cmp al, 35h   ;Number 5
	je five

	cmp al, 36h   ; Number 6
	je six

	cmp al, 37h   ; Number 7
	je seven

	cmp al, 38h   ; Number 8
	je eight

	cmp al, 39h   ; Number 9
	je nine

	cmp al, 8   ;Erase
	je erase

	jmp arrows	; if input is not numbers check if it is a arrow key

	one:
	mov al, 49
	mov bl, 09h
	mov cx,1
	mov ah,09h
	int 10h
	jmp menu

	two:
	mov al, 50
	mov bl, 09h
	mov cx,1
	mov ah,09h
	int 10h
	jmp menu

	three:
	mov al, 51
	mov bl, 09h
	mov cx,1
	mov ah,09h
	int 10h
	jmp menu

	four:
	mov al, 52
	mov bl, 09h
	mov cx,1
	mov ah,09h
	int 10h
	jmp menu

	five:
	mov al, 53
	mov bl, 09h
	mov cx,1
	mov ah,09h
	int 10h
	jmp menu

	six:
	mov al, 54
	mov bl, 09h
	mov cx,1
	mov ah,09h
	int 10h
	jmp menu

	seven:
	mov al, 55
	mov bl, 09h
	mov cx,1
	mov ah,09h
	int 10h
	jmp menu

	eight:
	mov al, 56
	mov bl, 09h
	mov cx,1
	mov ah,09h
	int 10h
	jmp menu

	nine:
	mov al, 57
	mov bl, 09h
	mov cx,1
	mov ah,09h
	int 10h
	jmp menu

	erase:
	mov al,0
	mov cx,1
	mov ah,09h
	int 10h
	jmp menu


	arrows:

    	cmp ah, 48h  ;Up Arrow key 
    	je up

    	cmp ah, 50h  ;Down Arrow key 
    	je down

    	cmp ah, 4Dh  ;Right Arrow key 
    	je right
	
	cmp ah, 4Bh  ;Left Arrow key 
   	je left

	cmp ah, 53h   ;Erase
	je erase

	jmp solve	;if it is not arrow key check if user wants solution
	up:
   	mov ah, 3  ;Get current position
    	int 10h
    	mov ah, 2  ;Move cursor Up
    	sub dh, 1
    	int 10h
	jmp menu

	down:
    	mov ah, 3  ;Get current position
    	int 10h
    	mov ah, 2  ;Move cursor Down
    	add dh, 1
    	int 10h
    	jmp menu

	right:
    	mov ah, 3  ;Get current position
    	int 10h
    	mov ah, 2  ;Move cursor Right
    	add dl, 1
    	int 10h
    	jmp menu

	left:
    	mov ah, 3  ;Get current position
    	int 10h
    	mov ah, 2  ;Move cursor Left
    	sub dl, 1
    	int 10h
    	jmp menu

	
	solve:		;type 's' to get answer
	cmp al, 115
	je answer
	
	jmp exit	;if input is not 's' as well, quit game

;This prints out the solved sudoko board

	answer:
	mov dl,10 	;skip line
	mov ah,2
	int 21h
	mov dl,13
	mov ah, 2
	int 21h
	mov dl,10 	;skip line
	mov ah,2
	int 21h
	mov dl,13
	mov ah, 2
	int 21h


	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset div11	;first division row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset frow1	;first row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset srow1	;second row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset trow1	;third row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset sdiv1	;second division row	
	mov ah, 9
	int 21h
	
	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset forow1	;fourth row	
	mov ah, 9
	int 21h
	
	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset firow1	;fifth row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset sirow1	;sixth row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset tdiv1	;third division row	
	mov ah, 9
	int 21h
	
	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset serow1	;seventh row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset erow1	;eighth row	
	mov ah, 9
	int 21h

	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset nrow1	;ninth row	
	mov ah, 9
	int 21h
	
	mov ah,09h
	mov bl,07h
	mov cx,25
	int 10h
	mov dx, offset ldiv1	;fourth division row	
	mov ah, 9
	int 21h

	jmp menu	;don't quit until user exists game


	exit:	; end game


	mov ah, 4ch
	int 21h	
	ret

	greet db ' Welcome to Sudoku!',13,10,'$'
	inst db " Use your arrow keys to move cursor ",13,10,"$"
	inst2 db " and 1 to 9 digits to solve the board ",13,10,"$"
	solu db " To get solution, place cursor at bottom",13,10,"$"
	solu2 db " after '*__' and press 's' ",13,10,"$"
	quit db ' To exit simply press any other letter',13,10,'$'
	quit2 db ' *__',13,10,'$'
	
	

	div1 db '+=======+=======+=======+',13,10,'$' 	; create board
	frow db '+ _ _ _ + 2 6 _ + 7 _ 1 +',13,10,'$'
	srow db '+ 6 8 _ + _ 7 _ + _ 9 _ +',13,10,'$'
	trow db '+ 1 9 _ + _ _ 4 + 5 _ _ +',13,10,'$'
	sdiv db '+=======+=======+=======+',13,10,'$'
	forow db '+ 8 2 _ + 1 _ _ + _ 4 _ +',13,10,'$'
	firow db '+ _ _ 4 + 6 _ 2 + 9 _ _ +',13,10,'$'
	sirow db '+ _ 5 _ + _ _ 3 + _ 2 8 +',13,10,'$'
	tdiv db '+=======+=======+=======+',13,10,'$'
	serow db '+ _ _ 9 + 3 _ _ + _ 7 4 +',13,10,'$'
	erow db '+ _ 4 _ + _ 5 _ + _ 3 6 +',13,10,'$'
	nrow db '+ 7 _ 3 + _ 1 8 + _ _ _ +',13,10,'$'
	ldiv db '+=======+=======+=======+',13,10,'$'


	div11 db '+=======+=======+=======+',13,10,'$'	; answer to soduko board
	frow1 db '+ 4 3 5 + 2 6 9 + 7 8 1 +',13,10,'$'
	srow1 db '+ 6 8 2 + 5 7 1 + 4 9 3 +',13,10,'$'
	trow1 db '+ 1 9 7 + 8 3 4 + 5 6 2 +',13,10,'$'
	sdiv1 db '+=======+=======+=======+',13,10,'$'
	forow1 db '+ 8 2 6 + 1 9 5 + 3 4 7 +',13,10,'$'
	firow1 db '+ 3 7 4 + 6 8 2 + 9 1 5 +',13,10,'$'
	sirow1 db '+ 9 5 1 + 7 4 3 + 6 2 8 +',13,10,'$'
	tdiv1 db '+=======+=======+=======+',13,10,'$'
	serow1 db '+ 5 1 9 + 3 2 6 + 8 7 4 +',13,10,'$'
	erow1 db '+ 2 4 8 + 9 5 7 + 1 3 6 +',13,10,'$'
	nrow1 db '+ 7 6 3 + 4 1 8 + 2 5 9 +',13,10,'$'
	ldiv1 db '+=======+=======+=======+',13,10,'$'
	main endp
end main
