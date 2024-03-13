#!/usr/bin/python3
import random

# Assigning a random signed number to the variable 'number'
number = random.randint(-10000, 10000)

# Printing the assigned number
print("Last digit of", number, "is", end=' ')

# Getting the last digit of the number
last_digit = abs(number) % 10

# Checking if the last digit is greater than 5, 0, or less than 6 and not 0
if last_digit > 5:
    print(last_digit, "and is greater than 5")
elif last_digit == 0:
    print(last_digit, "and is 0")
else:
    print(last_digit, "and is less than 6 and not 0")
