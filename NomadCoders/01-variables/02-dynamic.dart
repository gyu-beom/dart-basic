void main() {
  // var name; // type is also dynamic.
  dynamic name;

  if (name is String) {
    print(name);
  }
  if (name is int) {
    print(name);
  }
}
