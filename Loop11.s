.data
msg_1: .asciiz "\nDigite um número : "
erro:.asciiz "Erro.Número invalido! Digite números entre 0 a 100.\n"
res_1: .asciiz "\n[0-25]:"
res_2: .asciiz "\n{26-50]:"
res_3: .asciiz "\n[51-75]:"
res_4: .asciiz "\n[76-100]:"
.text
.globl main
main:
li $t1, 0
li $t2, 0
li $t3, 0
li $t4, 0

loop:
li $v0, 4
la $a0, msg_1
syscall

li $v0, 5
syscall
move $t0,$v0

bltz $t0, resultado

li $t5, 100
bgt $t0,$t5, invalido

li $t5, 25
ble $t0,$t5,c1

li $t5, 50
ble $t0,$t5, c2

li $t5, 75
ble $t0,$t5,c3

j c4


invalido:
li $v0, 4
la $a0, erro
syscall
j loop

c1:
addi $t1,$t1,1
j loop

c2:
addi $t2,$t2,1
j loop

c3:
addi $t3,$t3,1
j loop

c4:
addi $t4,$t4,1
j loop

resultado:
li $v0, 4
la $a0, res_1
syscall
li $v0, 1
move $a0,$t1
syscall

li $v0, 4
la $a0, res_2
syscall
li $v0, 1
move $a0, $t2
syscall


li $v0,4
la $a0, res_3
syscall
li $v0,1
move $a0, $t3
syscall

li $v0, 4
la $a0, res_4
syscall
li $v0, 1
move $a0, $t4
syscall

li $v0,10 
syscall
