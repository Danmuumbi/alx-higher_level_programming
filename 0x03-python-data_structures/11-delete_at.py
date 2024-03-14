#!/usr/bin/python3
def delete_at(my_list=[], idx=0):
    """
    Delete the item at a specific position in a list.

    Args:
        my_list (list): The input list.
        idx (int): The index of the item to delete.

    Returns:
        list: The modified list.
    """
    if idx < 0 or idx >= len(my_list):
        return my_list

    del my_list[idx]

    return my_list

if __name__ == "__main__":
    my_list = [1, 2, 3, 4, 5]
    idx = 3
    new_list = delete_at(my_list, idx)
    print(new_list)
    print(my_list)
