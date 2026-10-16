.data
msg_a: .asciiz "Digite o valor de A : "
msg_b: .asciiz "Digite o valor de B : "
msg_c: .asciiz "O valor C é : "
nv: .asciiz "\n"
.text
.globl main
main:
li $v0, 4
la $a0, msg_a
syscall
li $v0,5
syscall
move $t0,$v0

li $v0,4
la $a0, msg_b
syscall
li $v0,5
syscall
move $t1,$v0

bne $t0,$t1,multiplicar

somar:
add $t2,$t0,$t1
j resultado

multiplicar:
mul $t2,$t0,$t1


resultado:
li $v0,4
la $a0, msg_c
syscall
li $v0,1
move $a0,$t2
syscall

li $v0, 4
la $a0, nv
syscall

li $v0,10
syscall
 


