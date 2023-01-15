void main() {
  String? name = 'Hello';
  name = null;

  // if (name != null) {
  //   name.isNotEmpty;
  // }
  print(name?.isNotEmpty);
}
