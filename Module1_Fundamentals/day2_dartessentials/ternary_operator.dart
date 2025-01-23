void main() {
  discountPrice();
}

//Exercise 1: Write a program to check if a number is positive, negative, or zero using a ternary operator.
void exercise1({int num = 6}) {
  num > 0
      ? print("The number $num is positive")
      : num < 0
          ? print("The number $num is negative")
          : print("The number $num is zero");
}

//Exercise 2: Use a ternary operator to determine if a student passes or fails based on their score.
void passOrFail({int marks = 50}) {
  marks > 60
      ? print("The student passes the class.")
      : print("The student fails the class");
}

//Exercise 3: Implement a program to check if a number is even or odd using a ternary operator.
void evenOrOdd({int number = 25}) {
  number % 2 == 0 ? print("The number is even") : print("The number is odd");
}

//Exercise 4: Use nested ternary operators to find the largest number among three integers.
void max({int num1 = 5, int num2 = 11, int num3 = 10}) {
  num1 > num2 && num1 > num3
      ? print("$num1 is the largest")
      : num2 > num1 && num2 > num3
          ? print("$num2 is the largest")
          : print("$num3 is the largest");
}

//Exercise 5: Create a program to calculate a discount using a ternary operator. If the total exceeds $100, apply a 10% discount; otherwise, apply a 5% discount.
void discountPrice({int total = 90}) {
  int discount;
  total > 100 ? discount = 10 : discount = 5;
  print("The discount is $discount%");
  print("The discount price is ${total - (total * discount / 100)}");
}
