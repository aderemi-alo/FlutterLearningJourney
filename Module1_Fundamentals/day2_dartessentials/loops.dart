import 'dart:io';

void main() {
  reverseInt();
}

// Exercise 1: Generate the first 10 numbers of the Fibonacci sequence using a loop.
void fibonacci10() {
  List<int> fibonacci = [0, 1];
  for (int i = 2; i < 10; i++) {
    fibonacci.add(fibonacci[i - 1] + fibonacci[i - 2]);
  }
  print(fibonacci);
}

//Exercise 2: Write a program to calculate the factorial of a number using a for loop.
void factorial({int n = 10}) {
  int factorial = 1;
  for (int i = 1; i <= n; i++) {
    factorial *= i;
    print(factorial);
  }
  print(factorial);
}

//Exercise 3: Use a while loop to check if a number is prime.
bool prime(int n) {
  int i = 1;
  while (n - i > 1) {
    if ((n % (n - i)) == 0) {
      return false;
    }
    i++;
  }
  return true;
}

//Exercise 4: Print a pyramid pattern using nested loops
void pyramid({int n = 10}) {
  for (int i = 1; i <= n; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(i);
    }
    print("");
  }
}

//Exercise 5: Write a program using a do-while loop to reverse the digits of an integer.
void reverseInt([int n = 136]) {
  String number = n.toString();
  int i = 0;
  List list = [];
  do {
    list.add(number[number.length - (i + 1)]);
    i++;
  } while (i < number.length);
  print(list);
}
