.data
msg_p: .asciiz "Digite o primeiro número(dividendo): "
msg_s: .asciiz "Digite o segundo número(divisor não pode ser zero): "
erro: .asciiz "Erro: o divisor não pode ser zero. Tente novamente. \n"
result: .asciiz "Resultado da divisão inteira: "
.text
.globl main
main:
li $v0, 4
la $a0, msg_p
syscall
li $v0,5
syscall
move $t0,$v0

divisor:
li $v0,4
la $a0, msg_s
syscall
li $v0,5
syscall
move $t1,$v0
beq $t1,$zero, divisor_invalido
j divisão

divisor_invalido:
li $v0, 4
la $a0, erro
syscall
j divisor


divisão:
div $t0,$t1
mflo $t2

li $v0, 4
la $a0, result
syscall

li $v0,1
move $a0,$t2
syscall

li $v0, 10
syscall
