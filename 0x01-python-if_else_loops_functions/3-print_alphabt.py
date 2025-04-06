#!/usr/bin/python3

# Using a single loop to iterate over ASCII values of lowercase alphabet
for i in range(97, 123):
        if i != 101 and i != 113:  # Exclude ASCII values for 'e' and 'q'
                    print("{:c}".format(i), end="")

