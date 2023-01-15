class Player {
  String name, team;
  int xp;

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
  var gb = Player(name: 'gb', xp: 1000, team: 'red')
    ..name = 'hey'
    ..xp = 20000000000
    ..team = 'blue'
    ..sayHello();
}
