.data
msg_p: .asciiz "Quantidades de Camisetas Pequenas (R$10): "
msg_m: .asciiz "Quantidades de Camisetas Médias (R$12): "
msg_g: .asciiz "Quantidades de Camisetas Grandes (R$15): "
msg_total: .asciiz "Valor arrecadado : R$ "
.text
main:
li $t3, 0

li $v0 , 4
la $a0 msg_p
syscall

li $v0, 5
syscall
li $t1, 10
mult $v0, $t1
mflo $t2
add $t3,$t2,$t3


li $v0, 4
la $a0 msg_m
syscall

li $v0, 5
syscall
li $t1, 12
mult $v0, $t1
mflo $t2
add $t3,$t3,$t2


li $v0, 4
la $a0 msg_g
syscall
li $v0, 5
syscall
li $t1,15
mult $v0, $t1
mflo $t2
add $t3,$t3,$t2

li $v0, 4
la $a0 msg_total
syscall

li $v0, 1
move $a0,$t3
syscall

li $v0, 10
syscall
