void main() {
  var input = '2025-03-25';
  var output = DateTime.parse(input);
  var weekday = output.weekday;

  var weekdays = ['월', '화', '수', '목', '금', '토', '일'];

  print(weekdays[weekday - 1]);
}
