void main() {
  List<String> words = ["study", "update", "code", "understand"];

  var result = words
      .map((word) => word.toUpperCase())
      .where((word) => word.contains("UD"))
      .toList();

  print(result);
}
