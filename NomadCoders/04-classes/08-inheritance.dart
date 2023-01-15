class Human {
  final String name;

  Human({
    required this.name,
  });

  void sayHello() {
    print("Hi, my name is $name");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;

  Player({
    required String name,
    required this.team,
  }) : super(
          name: name,
        );

  @override
  void sayHello() {
    super.sayHello();
    print('play for ${team}');
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: 'jang',
  );

  player.sayHello();
}
