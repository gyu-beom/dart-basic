// class Player {
//   late String name;
//   late int xp;

//   Player(String name, int xp) {
//     this.name = name;
//     this.xp = xp;
//   }

//   void sayHello() {
//     print("Hi, my name is $name");
//   }
// }

class Player {
  final String name;
  int xp;

  Player(this.name, this.xp);

  void sayHello() {
    print("Hi, my name is $name");
  }
}

void main() {
  var player1 = Player('jang', 1500);
  player1.sayHello();

  var player2 = Player('kim', 2000);
  player2.sayHello();
}
