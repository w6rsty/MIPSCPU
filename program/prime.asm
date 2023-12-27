addiu $16, $0, 7         # Load the number to be checked (7) into register $16 (global variable)
addiu $1, $0,  1         # constant
addiu $2, $0,  2
beq $16, $0, 15          # Check for special cases (1 and 2 are primes) # 0 is not prime
beq $16, $1, 14          # 1 is not prime
beq $16, $2, 11          # 2 is prime
div $16, $2              # Check for even numbers # Divide the number by 2
addiu $17, $31, 0        # Get the remainder (temporary variable)
beq $17, $0, 10          # If remainder is 0, the number is even and not prime
addiu $18, $0, 3         # Check for odd numbers  # Initialize divisor to 3 (constant register)
beq $18, $16, 6          # check divisor # If divisor equals the number, it's prime
div $16, $18             # Divide the number by the divisor
addiu $17, $31, 0        # Get the remainder (temporary variable)
beq $17, $0, 5           # If remainder is 0, the number is divisible and not prime
addiu $18, $18, 2        # Increment the divisor by 2 (constant register)
j 10                     # Repeat the divisor check
addiu $10, $0, 1         # is_prime:
j 25
addiu $10, $0, 0         # not_prime:
j 25

001001 00000 10000 0000 0000 0000 0111
001001 00000 00001 0000 0000 0000 0001
001001 00000 00010 0000 0000 0000 0010