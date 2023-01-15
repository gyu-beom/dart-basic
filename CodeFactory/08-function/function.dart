int addList({List? testList, int? a}) {
  int total = 0;

  testList ??= [
    1,
    2,
    3,
    4,
    5,
  ];

  for (int number in testList) {
    total += number;
  }

  return total;
}

void main() {
  List testList = [
    1,
    1,
    2,
    3,
    5,
    8,
  ];

  int result = addList(testList: testList, a: 1);

  print(result);
}
