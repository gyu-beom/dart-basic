typedef Operation(int x, int y);

void add(int x, int y) {
  print('x + y = ${x + y}');
}

void substract(int x, int y) {
  print('x - y = ${x - y}');
}

void calculate(int x, int y, Operation oper) {
  oper(x, y);
}

void main() {
  add(1, 2);
  substract(3, 2);

  print('====================');

  Operation oper = add;

  oper(1, 2);

  oper = substract;

  oper(3, 2);

  print('====================');

  calculate(1, 2, add);
  calculate(3, 2, substract);
}
