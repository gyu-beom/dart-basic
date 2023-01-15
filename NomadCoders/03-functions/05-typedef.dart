// // Ex1. typedef list.
// typedef ListOfInts = List<int>;

// ListOfInts reverseListOfNumbers(ListOfInts list) {
//   var reversed = list.reversed;
//   return reversed.toList();
// }

// void main() {
//   print(reverseListOfNumbers([
//     1,
//     2,
//     3,
//   ]));
// }

// Ex2. typedef map.
typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return "Hi, ${userInfo['name']}";
}

void main() {
  print(sayHi({
    'name': 'jang',
  }));
}
