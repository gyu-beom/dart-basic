void main() {
  List<int> numbers = [
    1,
    1,
    2,
    3,
    5,
    8,
  ];

  int number = 0;

  for (int i = 0; i < numbers.length; i++) {
    number += numbers[i];
  }

  print(number);

  int total = 0;

  for (int number in numbers) {
    total += number;
  }

  print(total);

  print('====================');
  // break, continue
  int result = 10;

  for (int i = 0; i < result; i++) {
    if (i == 5) {
      break;
    }

    print(i);
  }

  for (int i = 0; i < result; i++) {
    if (i == 5) {
      continue;
    }

    print(i);
  }
}
