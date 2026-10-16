.data
msg_hn : .asciiz "Horas normais trabalhadas: "
msg_he: .asciiz "Horas extras trabalhas: "
msg_d: .asciiz "Valor dos descontos: "
msg_b : .asciiz " Valor bruto: R$ "
msg_l: .asciiz " Valor Liquído: R$ "
.text

li $v0 , 4
la $a0 msg_hn 
syscall

li $v0 , 5
syscall

li $t0,10
mult $v0, $t0
mflo $t1

li $v0 , 4
la $a0 msg_he
syscall
li $v0, 5
syscall
li $t0,15
mult $v0 , $t0
mflo $t2

add $t3,$t2,$t1

li $v0, 4
la $a0 msg_d
syscall

li $v0 , 5
syscall
move $t4,$v0

sub $t5,$t3,$t4

li $v0 4
la $a0 msg_b
syscall
li $v0,1
move $a0,$t3
syscall

li $v0, 4
la $a0 msg_l
syscall

li $v0,1
move $a0,$t5
syscall

li $v0,10
syscall

