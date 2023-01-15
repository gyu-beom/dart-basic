class Player {
  final String name;
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.age,
    required this.team,
  });

  Player.createdBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  Player.createdRedPlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("Hi, my name is $name");
  }
}

void main() {
  var bluePlayer1 = Player.createdBluePlayer(
    name: 'jang',
    age: 20,
  );
  bluePlayer1.sayHello();

  var redPlayer1 = Player.createdRedPlayer(
    name: 'kim',
    age: 20,
  );
  redPlayer1.sayHello();
}
