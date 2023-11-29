#!/usr/bin/python3

# Using one print function with string format and one loop
for i in range(ord('a'), ord('z') + 1):
    print("{:c}".format(i), end='')

# Print a newline character at the end
print()
