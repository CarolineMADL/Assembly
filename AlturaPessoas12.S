.data
p1:.asciiz "Digite a altura de uma pessoa (em cm):"
p2:.asciiz "Digite a altura da pessoa:"
p3:.asciiz "(em cm):"
res_mn:.asciiz "\na.Menor altura do grupo:"
res_ma:.asciiz "\nb.Maior altura do grupo:"
unid:.asciiz "cm"
.text
.globl main
main:
li $v0,4
la $a0, p1
syscall
li $v0,5
syscall
move $t0,$v0
move $t1,$t0
move $t2,$t0

li $t3,2
li $t4, 15

loop:
bgt $t3,$t4, resultado

li $v0,4
la $a0,p2
syscall
li $v0,1
move $a0, $t3
syscall

li $v0,4
la $a0, p3
syscall
li $v0,5
syscall
move $t0,$v0
blt $t0,$t1,atualiza_mn
j teste_m

atualiza_mn:
move $t1,$t0

teste_m:
bgt $t0,$t2,atualiza_ma
j proxima

atualiza_ma:
move $t2,$t0
proxima:
addi $t3,$t3,1
j loop

resultado:
li $v0, 4
la $a0, res_mn
syscall
li $v0,1
move $a0, $t1
syscall

li $v0,4
la $a0, unid
syscall

li $v0,4
la $a0, res_ma
syscall
li $v0,1
move $a0, $t2
syscall

li $v0,4
la $a0, unid
syscall

li $v0,10 
syscall
