.data
msg_n: .asciiz "Número inteiro: "
result: .asciiz "Resultado: "
.text
.globl main
main:
li $v0,4
la $a0, msg_n
syscall

li $v0,5
syscall
move $t0,$v0

bltz $t0 negativo

positivo:
li $t1,2
mul $t0,$t0,$t1
j imprimir

negativo:
li $t1, 3
mul $t0,$t0,$t1


imprimir:
li $v0 , 4
la $a0, result
syscall

li $v0, 1
move $a0,$t0
syscall

li $v0, 10
syscall