import 'dart:io';

void main() {
  finallyBlock();
}

//Exercise 1: Write a program that handles division by zero using try and catch.
void divisionByZero([int x = 10, int y = 0]) {
  try {
    double result = x / y;
    if (y == 0) {
      throw Exception("Division by Zero is not allowed");
    }
    print("Result: $result");
  } catch (e) {
    print(e);
  }
}

//Exercise 2: Create a program that takes user input and raises an exception if the input is not a number.
void userInput() {
  try {
    print("Enter a number:");
    int number = int.parse(stdin.readLineSync()!);
    print("You entered: $number");
  } catch (e) {
    print(Exception("You did not enter a number"));
  }
}

//Exercise 3: Demonstrate a finally block for resource cleanup (e.g., closing a file or printing a message)
void finallyBlock() {
  try {
    print("Enter a number:");
    int number = int.parse(stdin.readLineSync()!);
    print("You entered: $number");
  } catch (e) {
    print(Exception("You did not enter a number"));
  } finally {
    print("Program completed");
  }
}

//Exercise 4: Create and throw a custom exception (e.g., NegativeValueException) when a negative value is encountered.
void negativeValue() {
  try {
    print("Enter a number:");
    int number = int.parse(stdin.readLineSync()!);
    if (number < 0) {
      throw Exception("Negative value is not allowed");
    }
    print("You entered: $number");
  } catch (e) {
    print(Exception("You did not enter a number"));
  }
}

//Exercise 5: Write a program that catches different types of exceptions (e.g., FormatException, RangeError)
void multipleExceptions() {
  try {
    print("Enter a number:");
    int number = int.parse(stdin.readLineSync()!);
    print("You entered: $number");
  } on (FormatException, RangeError) {
    print(Exception("You did not enter a number"));
  }
}
