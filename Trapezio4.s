.data
msg_bma: .asciiz "Base Maior: "
msg_bmn: .asciiz "Base Menor : "
msg_h: .asciiz "Altura : "
msg_a: .asciiz "Area do trapezio é :  "
nv: .asciiz "\n"
.text
.globl main
main:

li $v0, 4
la $a0 , msg_bma
syscall
li $v0, 5
syscall
move $t0,$v0

li $v0, 4
la $a0, msg_bmn
syscall
li $v0,5
syscall
move $t1, $v0

li $v0, 4
la $a0, msg_h
syscall
li $v0, 5
syscall
move $t2,$v0

add $t3, $t0,$t1
mul $t3,$t3,$t2

li $t4,2
div $t3,$t4
mflo $t5

li $v0,4
la $a0,msg_a
syscall

li $v0,1
move $a0,$t5
syscall

li $v0, 4
la $a0, nv
syscall

li $v0,10
syscall



  