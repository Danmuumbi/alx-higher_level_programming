#!/usr/bin/python3

# Using three print functions with string format and two loops
for i in range(10):
    for j in range(i + 1, 10):
        if i != 8 or j != 9:
            print("{:d}{:d}, ".format(i, j), end='')
        else:
            print("{:d}{:d}".format(i, j))

