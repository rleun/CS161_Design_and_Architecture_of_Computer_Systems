.text

main:
	# Ouput prompt and get input
	la $a0, prompt1				# load a message to be output
	li $v0, 4				# syscall 4 (print_str)
	syscall					# outputs the string at $a0
	
	li $v0, 5    				# syscall 5 (read_int)
  	syscall         			# reads an int into $v0
  	
  	beqz $v0, FixedPoint2FloatingPoint	# If 0, branch to FixedPoint2FloatingPoint
  	j FloatingPoint2FixedPoint		# Else, jump to FloatingPoint2FixedPoint

FixedPoint2FloatingPoint:
	# Fixed Point to Floating Point
	
	# Get Decimal
	la $a0, prompt2				# load a message to be output
	li $v0, 4				# syscall 4 (print_str)
	syscall					# outputs the string at $a0
	li $v0, 5    				# syscall 5 (read_int)
  	syscall         			# reads an int into $v0
	add $s0, $v0, $zero			# Store the input into $s0
	
	# Get Fixed Point Number
	la $a0, prompt3				# load a message to be output
	li $v0, 4				# syscall 4 (print_str)
	syscall					# outputs the string at $a0
	li $v0, 5    				# syscall 5 (read_int)
  	syscall         			# reads an int into $v0
	add $s1, $v0, $zero			# Store the input into $s1
	
	beqz $s1, CaseZero			# If 0, do different calculation
	
	lui $t0, 0x8000				# Set upper 16-bits to 0x8000: MSB = 1
	and $s3, $t0, $s1			# Check MSB to see if neg
	
	beqz $s3 DontCompliment			# If not negative, dont do two's compliment
	
	not $s1, $s1				# Two's compliment - invert and add one
	addi $s1, $s1, 1
	
DontCompliment:
	
	# Find the leading 1
	li $t0, 0				# Loop count
	li $s4, 0				# Leading 1 position's from the right
	addi $t1, $s1, 0				# Load a copy of the integer into $t1
	li $t3, 1				# Temporary comparision of 1

Leading1Loop:
	addi $t0, $t0, 1			# Increase loop count
	srl $t1, $t1, 1				# Shift integer to the right by one
	beqz $t1, EndLeading1Loop		# Break if $t1 == 0
	andi $t2, $t1, 1			# Check if most right bit is 1
	bne $t2, $t3, Leading1Loop		# If not, then continue loop
	addi $s4, $t0, 0			# If it is a 1, set $s4 to be the current position in the loop
	b Leading1Loop				# Return to loop
	
EndLeading1Loop:
	
	lui $t0, 0xFFFF				# Set $t0 to 0xFFFFFFFF
	or $t0, 0xFFFF
	andi $t1, $t1, 0
	addi $t1, $t1, 32
	sub $t1, $t1, $s4
	srlv $t0, $t0, $t1
	and $s5, $t0, $s1			# Calculate the mantissa
	
	li $t0, 23
	sub $t0, $t0, $s4
	sllv $s5, $s5, $t0
	sub $s4, $s4, $s0			
	addi $s4, $s4, 127
	sll $s4, $s4, 23
	
	# Compile into floating point bits
	add $s6, $s3, $s4
	add $s6, $s6, $s5
	la $t0, result
	sw $s6, ($t0)
	l.s $f12, ($t0)
	
	# Print out result
	la $a0, prompt4
	li $v0, 4
	syscall
	li $v0, 2
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	j main
	
CaseZero:
	
	la $t0, result
	andi $s6, $s6, 0
	sw $s6, ($t0)
	l.s $f12, ($t0)
	# Print out result
	la $a0, prompt4
	li $v0, 4
	syscall
	li $v0, 2
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	j main
	
FloatingPoint2FixedPoint:

	# Get Decimal
	la $a0, prompt2				# load a message to be output
	li $v0, 4				# syscall 4 (print_str)
	syscall					# outputs the string at $a0
	li $v0, 5    				# syscall 5 (read_int)
  	syscall         			# reads an int into $v0
	add $s0, $v0, $zero			# Store the input into $s0
	
	# Get Floating Point
	la $a0, prompt5				# load a message to be output
	li $v0, 4				# syscall 4 (print_str)
	syscall					# outputs the string at $a0
	li $v0, 6    				# syscall 6 (read_float)
  	syscall         			# reads a float into $v0
  	
  	la $t0, floatRegister			# Load float into regular register
  	s.s $f0, ($t0)
  	lw $s1, ($t0)
  	
	beqz $s1, CaseZeroFloat			# If float is 0, calculate special case
	
	addi $s2,$s1, 0
	srl $s2, $s2, 23
	andi $s2, $s2, 0xFF
	addi $s2, $s2, -127
	
	lui $t0, 0x7F
	or $t0, $t0, 0xFFFF
	and $s3, $t0, $s1
	
	add $t0, $s0, $s2
	li $t1, 23
	sub $t0, $t1, $t0
	srlv $s4, $s3, $t0
	
	li $t0, 1				# Put the implied 1
	add $t1, $s0, $s2
	sllv $t0, $t0, $t1
	or $s4, $s4, $t0
	
	lui $t0, 0x8000
	and $s5, $s1, $t0
	beqz $s5, isPositive
	
	not $s4, $s4				# Two's compliment if negative
	addi $s4, $s4, 1

isPositive:
	la $a0, prompt4				# Print out result
	li $v0, 4
	syscall
	li $v0, 1
	addi $a0, $s4, 0
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	j main
	

CaseZeroFloat:

	la $a0, prompt4
	li $v0, 4
	syscall
	li $a0, 0
	li $v0, 1
	syscall
	la $a0, newline
	li $v0, 4
	syscall
	j main

	


.data
	prompt1: .asciiz "Input 0 for Fixed Point to Floating Point and 1 for Floating Point to Fixed Point: "
	prompt2: .asciiz "Input the value that represents the location to the left of the binary point: "
	prompt3: .asciiz "Input the 32-bit Fixed Point number: "
	result: .word 0
	prompt4: .asciiz "The result is: "
	newline: .asciiz "\n"
	prompt5: .asciiz "Input the Floating Point number: "
	floatRegister: .word 0
