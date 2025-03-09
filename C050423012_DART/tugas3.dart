void main() {
  List<int> numbers = [1, 2, 3]; 
  var result = numbers.map((e) => 2 * e).map((e) => "x$e").toList(); 
  print(result); 
}
