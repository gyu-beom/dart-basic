enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Player {
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
}

void main() {
  var redPlayer1 = Player(
    name: 'jang',
    xp: XPLevel.beginner,
    team: Team.red,
  );
  redPlayer1.sayHello();

  var bluePlayer1 = redPlayer1
    ..name = 'kim'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();
}
