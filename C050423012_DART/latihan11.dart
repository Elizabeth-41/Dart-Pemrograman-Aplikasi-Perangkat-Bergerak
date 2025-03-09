void main() {
  List<int> mylist = [1, 2, 3];
  mylist.add(4);
  print("Jumlah element list : ${mylist.length}");

  for (int val in mylist) {
    print(val);
  }
  print("Cara lain Loop");
  mylist.forEach((val) {
    print(val);
  });

  print("Cara lain lebih singkat");
  mylist.forEach((val) => print(val));
}
