String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

void main() {
  print(capitalizeName('jang'));
  print(capitalizeName(null));

  String? name;
  name ??= 'jang';
  print(name);
}
