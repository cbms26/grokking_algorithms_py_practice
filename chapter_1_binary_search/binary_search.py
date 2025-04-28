# Binary Search Algorithm, 

def binary_search(arr_items, search_item):
    low = 0
    high = len(arr_items) - 1       # subtract with 1 since position of first element in an array starts from 0

    while low <= high:
        mid = (low + high) // 2     # Use '//' instead of '/' to get round down value.
        guess = arr_items[mid]

        if guess == search_item:
            return mid
        elif guess > search_item:
            high = mid - 1          # Too High
        else:
            low = mid + 1           # Too Low
    return None

my_list = [1, 5, 10, 30, 60, 70]    # List should always be sorted to perform Binary Search

print(binary_search(my_list, 70))
