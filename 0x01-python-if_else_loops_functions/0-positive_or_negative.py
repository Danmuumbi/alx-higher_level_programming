#!/usr/bin/python3
import random

# Assigning a random signed number to the variable 'number'
number = random.randint(-10, 10)

# Printing the assigned number
print(number, end=' ')

# Checking if the number is positive, negative, or zero
if number > 0:
    print(f'{number} is positive')
elif number == 0:
    print(f'{number} is zero')
else:
    print(f'{number} is negative')
    print(" ")
