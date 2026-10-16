.data
msg_c1: .asciiz "Primeiro Cateto: "
msg_c2: .asciiz "Segundo Cateto: "
msg_h: .asciiz " A hipotenusa é :  "
nv: .asciiz "\n"
.text
.globl main
main:
li $v0, 4
la $a0, msg_c1
syscall
li $v0,6
syscall
mov.s $f1,$f0


li $v0, 4
la $a0, msg_c2
syscall

li $v0,6
syscall
mov.s $f2,$f0

mul.s $f3,$f1,$f1
mul.s $f4,$f2,$f2

add.s $f5,$f3,$f4

sqrt.s $f12,$f5

li $v0, 4
la $a0, msg_h
syscall

li $v0,2
syscall

li $v0, 4
la $a0,nv
syscall

li $v0,10
syscall


