#!/usr/bin/python3
import sys

message = "and that piece of art is useful - Dora Korpar, 2015-10-19"

# Writing to stderr using sys.stderr.write
sys.stderr.write(message + '\n')

# Exiting with status code 1
sys.exit(1)
