#!/usr/bin/python3
"""
Module for lookup function

Prototype: def lookup(obj)
Returns a list object
"""
def lookup(obj):
    """
    Returns the list of available attributes and methods of an object
    """
    return dir(obj)

