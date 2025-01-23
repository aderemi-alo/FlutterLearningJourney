void main() {
  print(squareList([1, 3, 54, 6, 7, 234, 2]));
}

//Exercise 1: Write a function using arrow syntax to return the square of a number.
int square(int number) => number * number;

//Exercise 2: Create an arrow syntax function to reverse a given string.
String rev(String string) => string.split('').reversed.join();

//Exercise 3: Write an arrow function that filters even numbers from a list of integers.
List evenNum(List list) => list.where((element) => element.isEven).toList();

//Exercise 4: Implement an arrow function to check if a number is divisible by another number.
bool isDivisible({required int number, required int divider}) =>
    number % divider == 0;

//Exercise 5: Use an arrow function in the map method to convert a list of numbers to their squares.
List squareList(List list) => list.map((e) => e * e).toList();
