void main() {
  exercise5();
}

//Exercise 1 - Create a list of integers and calculate both the sum and average of its elements.
void exercise1() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int sum = 0;
  double average = 0;
  list.forEach((i) {
    sum += i;
  });
  average = sum / list.length;
  print("The sum is $sum and the average is $average");
}

//Exercise 2 - Write a function that removes duplicate elements from a list and returns the unique elements.
void exercise2() {
  List list = [7, 10, 7, 3, 5, 23, 3, 132, 5, 23];
  List newList = [];
  for (int i = 0; i < list.length; i++) {
    if (!newList.contains(list[i])) {
      newList.add(list[i]);
    }
  }
  print(newList);
}

//Exercise 3 Implement a function to find the second largest number in a list of integers.
void exercise3() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 17, 9, 10];
  int max = list[0];
  int secondMax = 0;
  for (int i = 0; i < list.length; i++) {
    if (list[i] > max) {
      secondMax = max;
      max = list[i];
    } else if (list[i] > secondMax && list[i] != max) {
      secondMax = list[i];
    }
  }
  print(secondMax);
}

//Exercise 4 Rotate a list to the right by n positions. For example, [1, 2, 3, 4] rotated by 2 becomes [3, 4, 1, 2].
void exercise4({int n = 2}) {
  List<int> list = [1, 2, 3, 4];
  List<int> newList = [];
  for (int i = 0; i < list.length; i++) {
    newList.add(list[(i + n) % list.length]);
  }
  print(newList);
}

//Exercise 5 From a mixed list (e.g., [1, "hello", 3.5, "world"]), filter out only the string elements.
void exercise5() {
  List list = [1, "hello", 3.5, "world"];
  List newList = [];
  for (int i = 0; i < list.length; i++) {
    if (list[i] is String) {
      newList.add(list[i]);
    }
  }
  print(newList);
}
