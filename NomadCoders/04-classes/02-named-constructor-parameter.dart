class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print("Hi, my name is $name");
    print("My age is $age");
  }
}

void main() {
  var player1 = Player(
    name: 'jang',
    xp: 1500,
    team: 'red',
    age: 20,
  );
  player1.sayHello();

  var player2 = Player(
    name: 'kim',
    xp: 2000,
    team: 'blue',
    age: 20,
  );
  player2.sayHello();
}
