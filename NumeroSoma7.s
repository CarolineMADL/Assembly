.data 
msg_n: .asciiz "Adicione um número inteiro: "
result: .asciiz "Resultado: "
.text
.globl main
main:
li $v0, 4
la $a0, msg_n
syscall

li $v0,5 
syscall
move $t0,$v0

andi $t1,$t0,1
beq $t1,$zero,par

impar:
addi $t0,$t0,8
j imprimir

par:
addi $t0,$t0,5

imprimir:
li $v0, 4
la $a0, result
syscall

li $v0,1
move $a0,$t0
syscall

li $v0, 10 
syscall