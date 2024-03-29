#!/usr/bin/python3
def pascal_triangle(n):
    """
    Returns a list of lists of integers representing Pascal’s triangle of n
    """
    if n <= 0:
        return []

    triangle = [[1]]

    for i in range(1, n):
        prev_row = triangle[-1]
        new_row = [1]

        for j in range(1, i):
            new_row.append(prev_row[j - 1] + prev_row[j])

        new_row.append(1)
        triangle.append(new_row)

    return triangle

# Uncomment the following lines for testing the function with the provided main script
# if __name__ == "__main__":
#     from 12-main import print_triangle
#     print_triangle(pascal_triangle(5))

