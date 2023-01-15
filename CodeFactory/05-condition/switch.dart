void main() {
  int number = 21;

  switch (number % 4) {
    case 0:
      print('4의 배수입니다.');
      break;

    case 1:
      print('나머지가 1입니다.');
      break;

    case 2:
      print('나머지가 2입니다.');
      break;

    default:
      print('어떤 조건에도 맞지 않습니다.');
      break;
  }
}
