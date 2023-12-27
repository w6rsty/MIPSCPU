addiu $16, $0, 48   # Load the first number (48) into register $16 (global variable
addiu $17, $0, 18   # Load the second number (18) into register $17 (global variable)
addu $18, $17, $0   # loop: # Copy the value of $17 to $18 (temporary variable)
beq $18, $0, 6      # If $17 is 0, GCD is in register $16
div $16, $17        # Divide the first number by the second number
addiu $18, $31, 0   # Get the remainder, store it in register $18 (temporary variable)
addu $16, $17, $0   # Move the second number to register $16
addu $17, $18, $0   # Move the remainder to register $17
j 2                 # Repeat the GCD computation
addu $16, $18, $0   # done: # Move the final remainder to register $16 (GCD)
j 12                # End program # Jump to the return address (HI/LO)
