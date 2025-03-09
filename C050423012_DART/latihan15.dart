void main() {
  var listMhs = ["Wati", "Budi", "budi"];
  print("List 1:");
  print(listMhs);

  print("List 2:");
  var listMhs2 = listMhs.map((mhs) => mhs.toUpperCase()).toList();
  print(listMhs2);

  print("List 3:");
  var listMhs3 = listMhs.where((mhs) => mhs.contains("ud")).toList();
  print(listMhs3);
}
