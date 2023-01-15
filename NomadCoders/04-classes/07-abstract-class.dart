abstract class Human {
  void walk();
}

enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Player extends Human {
  String name;
  XPLevel xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hi, my name is $name");
  }

  void walk() {
    print("$name is wallking");
  }
}

class Coach extends Human {
  void walk() {
    print("the coach is walking");
  }
}

void main() {
  var player1 = Player(
    name: 'jang',
    xp: XPLevel.beginner,
    team: Team.red,
  );
  player1.sayHello();

  var player2 = player1
    ..name = 'kim'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello()
    ..walk();

  var coach1 = Coach();
  coach1.walk();
}
