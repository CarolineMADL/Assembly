.data
msg_larg: .asciiz "Largura: "
msg_comp: .asciiz "Comprimento: "
msg_area: .asciiz "Area: "
.text
main:
#Ler largura

li $v0,4
la $a0, msg_larg
syscall
li $v0, 5
syscall
move $t0, $v0

#Ler Comprimento
li $v0, 4
la $a0, msg_comp
syscall
li $v0, 5
syscall
move $t1, $v0
#Area
mult $t0, $t1
mflo $t0

li $v0, 4
la $a0, msg_area
syscall
li $v0, 1
move $a0, $t0
syscall
#fim
li $v0, 10
syscall

