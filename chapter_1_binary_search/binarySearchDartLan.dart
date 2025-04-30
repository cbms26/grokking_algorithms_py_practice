// Binary Search Algorithm
void main() {
  var myList = [1, 5, 20, 25, 50, 60, 70, 90, 100];

  print(binary_search(myList, 50));
  print(binary_search(myList, 100));
  print(binary_search(myList, 200));
}

dynamic binary_search(List arrItems, searchItem) {
  int low = 0;
  int high = arrItems.length - 1;
  String statement = "Not found in the List!";

  while (low <= high) {
    int mid = ((low + high) / 2).floor();
    int guess = arrItems[mid];

    if (guess == searchItem) {
      return mid;
    } else if (guess > searchItem) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }
  return statement;
}
