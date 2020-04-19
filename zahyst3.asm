;Z=(7S-A+5B)- (F9/8E)
.model small
.stack 100h
.data

A DB ?
B DB ?
S DB ?
F DB ?
E DB ?
Z DW ?
.code
start:
mov ax,@data 
mov ds,ax    

mov A,3      
mov B,2      
mov S,10      
mov F,8      
mov E,5 

mov al,8
mul E
mov cx,ax

mov al,9
mul F
div cx
mov ax,cx


mov cl, 7
mul S
sub cl, A
mov cx,ax

mov al,5    
mul B   
add ax,cx   
mov cx,ax

sub cx,ax


mov Z,ax
    
MOV AH,4CH
INT 21H
END start 