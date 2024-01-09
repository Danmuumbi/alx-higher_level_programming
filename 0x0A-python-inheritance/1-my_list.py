#!/usr/bin/python3
"""
Module for MyList class
"""


class MyList(list):
    """
    A class that inherits from list and provides additional methods.
    """

    def print_sorted(self):
        """
        Prints the list in sorted order (ascending).
        """
        print(sorted(self))

# Example usage in 1-main.py
if __name__ == "__main__":
    MyList = __import__('1-my_list').MyList

    my_list = MyList()
    my_list.append(1)
    my_list.append(4)
    my_list.append(2)
    my_list.append(3)
    my_list.append(5)

    print(my_list)
    my_list.print_sorted()
    print(my_list)

