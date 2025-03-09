void main() {
  List<int> numbers = [1, 2, 3];

  var squaredNumbers = numbers.map((num) => num * num).toList();

  print(squaredNumbers);
}
