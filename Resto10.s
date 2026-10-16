.data
msg_p: .asciiz "Adicione o primeiro número: "
msg_s: .asciiz "Adicione o segundo número: "
result: .asciiz "O resto da divisão do maior e o menor é: "
.text
.globl main
main:
li $v0,4
la $a0, msg_p
syscall

li $v0,5
syscall
move $t0,$v0

li $v0,4
la $a0,msg_s
syscall

li $v0,5
syscall
move $t1,$v0

blt $t0, $t1,t1maior

t0maior: 
move $t2,$t0
move $t3,$t1
j resto

t1maior:
move $t2,$t1
move $t3,$t0

resto:
div $t2,$t3
mflo $t4
mul $t5,$t4,$t3
sub $t6,$t2,$t5

li $v0,4
la $a0, result
syscall

li $v0, 1
move $a0,$t6
syscall

li $v0,10
syscall
