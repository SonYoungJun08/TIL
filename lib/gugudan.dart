void main() {
  print("구구단");
  print("-------");

  for (int dan = 2; dan <= 9; dan++) {
    print("$dan 단");
    for (int su = 1; su <= 9; su++) {
      print("$dan x $su = ${dan * su}");
    }
    print("-------");
  }
}
