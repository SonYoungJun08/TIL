void main() {
  var n = 10;
  print("  ");
  for (var y = 0; y < n; y++) {
    var line = "";
    for (var x = 0; x < n; x++) {
      line += "=";
    }
    print(line);
  }
  print("  ");
  for (var y = 0; y < n; y++) {
    var line = "";
    for (var x = 0; x < n; x++) {
      if (x == 0 || y == 0 || x == n - 1 || y == n - 1) {
        line += "=";
      } else {
        line += " ";
      }
    }
    print(line);
  }
  print("  ");
  for (var y = 0; y < n; y++) {
    var line = "";
    for (var x = 0; x < n; x++) {
      if (x == 0 || y == 0 || x == n - 1 || y == n - 1) {
        line += "=";
      } else if (x + y == n - 1) {
        line += "=";
      } else {
        line += " ";
      }
    }
    print(line);
  }
  print("  ");
  for (var y = 0; y < n; y++) {
    var line = "";
    for (var x = 0; x < n; x++) {
      if (x == 0 || y == 0 || x == n - 1 || y == n - 1) {
        line += "=";
      } else if (x == y) {
        line += "=";
      } else {
        line += " ";
      }
    }
    print(line);
  }
  print("  ");
  for (var y = 0; y < n; y++) {
    var line = "";
    for (var x = 0; x < n; x++) {
      if (x == 0 || y == 0 || x == n - 1 || y == n - 1) {
        line += "=";
      } else if (x == y || x + y == n - 1) {
        line += "=";
      } else {
        line += " ";
      }
    }
    print(line);
  }
}
