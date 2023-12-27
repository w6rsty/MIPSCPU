# MIPS Assembly Program
# Checks if a given number (7 in this case) is prime

    .text

    # Initialize data
    addiu $t0, $zero, 7      # Load the number to be checked (7) into register $t0

    # Check for special cases (1 and 2 are primes)
    beq $t0, $zero, not_prime # 0 is not prime
    beq $t0, $1, not_prime    # 1 is not prime
    beq $t0, $2, is_prime     # 2 is prime

    # Check for even numbers
    div $t0, $2               # Divide the number by 2
    mfhi $t1                  # Get the remainder

    beq $t1, $zero, not_prime # If remainder is 0, the number is even and not prime

    # Check for odd numbers
    li $t2, 3                 # Initialize divisor to 3

check_divisor:
    beq $t2, $t0, is_prime    # If divisor equals the number, it's prime

    div $t0, $t2              # Divide the number by the divisor
    mfhi $t1                  # Get the remainder

    beq $t1, $zero, not_prime # If remainder is 0, the number is divisible and not prime

    addiu $t2, $t2, 2         # Increment the divisor by 2 (skip even divisors)
    j check_divisor           # Repeat the divisor check

is_prime:
    # Code to execute if the number is prime (you can add your logic here)
    j $ra                     # Jump to the return address

not_prime:
    # Code to execute if the number is not prime (you can add your logic here)
    j $ra                     # Jump to the return address