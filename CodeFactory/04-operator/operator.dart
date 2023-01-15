void main() {
  // Num Operator
  int number = 2;

  print(number + 2);
  print(number - 2);
  print(number * 2);
  print(number / 2);
  print(number % 2);

  number++;

  print(number);

  number--;

  print(number);

  print('====================');
  // ??=
  int? number2;

  number2 ??= 20;

  print(number2);

  print('====================');
  // +=, -=, *=, /=
  double number3 = 2;

  number3 += 1;

  print(number3);

  number3 -= 1;

  print(number3);

  number3 *= 2;

  print(number3);

  number3 /= 2;

  print(number);

  print('====================');
  // <, >, <=, >=, ==
  int number4 = 4;
  int number5 = 5;

  print(number4 < number5);
  print(number4 > number5);
  print(number4 <= number5);
  print(number4 >= number5);
  print(number4 == number5);

  print('====================');
  // is
  int number6 = 1;

  print(number6 is int);
  print(number6 is String);
  print(number6 is bool);
  print(number6 is! String);

  print('====================');
  // &&, ||
  bool result = 12 > 10 && 1 > 0;

  print(result);

  result = 12 > 10 && 1 < 0;

  print(result);

  result = 12 > 10 || 1 < 0;

  print(result);
}
