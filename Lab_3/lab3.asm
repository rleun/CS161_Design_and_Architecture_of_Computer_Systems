.data
	prompt1: .asciiz "Input decimal place \n"
	prompt2: .asciiz "Input number in base 10\n"
	prompt3: .asciiz "The number in floating point is\n"
	promptFixedFloat: .asciiz "Input number in floating point\n"
	prompt5: .asciiz "The number in fixed point, as an integer, is\n"
	prompt6: .asciiz "Input 0 for Fixed to Float 0r 1 for Float to Fixed\n"
	input: .word 0
	newline: .asciiz "\n"
	result:	.word 0
.text
main:
	#Prompt fixed or float
	li $v0, 4
	la $a0, prompt6
	syscall
	li $v0, 5
	syscall
	beqz $v0, FxToFl
	j FlToFx
FxToFl:
	#Get decimal place
	li $v0, 4
	la $a0, prompt1
	syscall
	li $v0, 5
	syscall
	addi $s0, $v0, 0

	#Get base 10 number
	li $v0, 4
	la $a0, prompt2
	syscall
	li $v0, 5
	syscall
	addi $s1, $v0, 0

	bnez $s1 NotZero
	
	#Special case of zero
	#print out in floating point
	#Store result in $f12
	la $t0, result
	andi $s6, $s6, 0
	sw $s6, ($t0)
	l.s $f12, ($t0)
	
	li $v0, 4
	la $a0, prompt3
	syscall
	li $v0, 2
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	j main
	
	NotZero:
	
	#Get sign bit
	lui $t0, 0x8000
	and $s3, $s1, $t0
	
	#2's complement if negative
	beqz $s3, DontComplement
	
	not $s1, $s1
	addi $s1, $s1, 1
	
	DontComplement:
	
	#Count exponent by finding leading one
	#This also gets the mantissa
	
	li $t0, 0 #loop count
	li $s4, 0 #leading one position
	addi $t1, $s1, 0 
	li $t3, 1
	Loop:
		addi $t0, $t0, 1
		srl $t1, $t1, 1
		beqz $t1, LoopDone
		andi $t2, $t1, 1
		bne $t2, $t3, Loop
		addi $s4, $t0, 0
		b Loop
	LoopDone:
	#$t0 is now one's to mask the mantissa
	andi $t0, $t0, 0
	lui $t1, 0xFFFF
	or $t1, 0xFFFF
	add $t0, $t0, $t1
	#$t1 is now shift amount
	andi $t1, $t1, 0
	addi $t1, $t1, 32
	sub $t1, $t1, $s4
	srlv $t0, $t0, $t1 
	
	#Get the mantissa
	#s5 is the mantissa 
	and $s5, $t0, $s1
	
	#Remeber to left shift the mantissa 
	#$t0 now stores shift amount
	li $t0, 23
	sub $t0, $t0, $s4
	sllv $s5, $s5, $t0
		
	#Store exponent
	sub $s4, $s4, $s0
#COMMENTED OUT HERE !!SEEMS!! TO FIX THE OFF BY ONE EXPONENT
	#addi $s4, $s4, -1
	addi $s4, $s4, 127

	#Clear the output register
	andi $s6, $s6, 0
		
	#Shift the bits to their correct position
	sll $s4, $s4, 23
	
	#Pack the bits into floating point
	
	add $s6, $s6, $s3
	add $s6, $s6, $s4
	add $s6, $s6, $s5 
	
	la $t0, result
	#Store result in $f12
	sw $s6, ($t0)
	l.s $f12, ($t0)
	
	#print out in floating point
	li $v0, 4
	la $a0, prompt3
	syscall
	li $v0, 2		
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	j main

FlToFx:
	#Get decimal place
	li $v0, 4
	la $a0, prompt1
	syscall
	li $v0, 5
	syscall
	addi $s0, $v0, 0
	
	#Prompt for a floating point number
	li $v0, 4
	la $a0, promptFixedFloat
	syscall
	li $v0, 6
	syscall
	
	#Load float into regular register
	la $t0, input
	s.s $f0, ($t0)
	lw $s1, ($t0)
	
	bnez $s1 NotZero2
	
	#Special case of zero
	li $v0, 4
	la $a0, prompt5
	syscall
	li $a0, 0
	li $v0, 1
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	j main
	
	NotZero2:
	
	#Get the exponent first shift exponent then and the bits
	addi $s2, $s1, 0
	srl $s2, $s2, 23
	andi $s2, $s2, 0xFF
	addi $s2, $s2, -127
	
	#Get the mantissa
	lui $t0, 0x7F
	or $t0, $t0, 0xFFFF
	and $s3, $t0, $s1
	
	#Pack the bits into fixed point
	add $t0, $s2, $s0
	li $t1, 23
	sub $t0, $t1, $t0
	srlv $s4, $s3, $t0
	
	#Put in the implied 1
	li $t0, 1
	add $t1, $s2, $s0
	sllv $t0, $t0, $t1
	or $s4, $s4, $t0
	
	#Get sign bit
	lui $t0, 0x8000
	and $s5, $s1, $t0
	beqz $s5, PrintFixed
	
	not $s4, $s4
	addi $s4, $s4, 1
	
	PrintFixed:
	
	#Print the result
	li $v0, 4
	la $a0, prompt5
	syscall	
	li $v0, 1
	addi $a0, $s4, 0
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	j main

