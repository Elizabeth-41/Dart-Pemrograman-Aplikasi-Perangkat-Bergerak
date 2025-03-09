void main() {
  List<int> x = [1, 2, 3, 4, 5, 6];

  var result = x.where((int x) => x % 2 == 0).map((int x) => x * x).toList();

  print(result);
}

// Contoh dari penggunaan x.where((int x) => x % 2 == 0).map((int x) => x * x).toList();
// 1. x.where((int x) => x % 2 == 0) akan menghasilkan [2, 4, 6] karena hanya angka genap yang akan diambil.
// 2. [2, 4, 6].map((int x) => x * x) akan menghasilkan [4, 16, 36] karena setiap angka akan dipangkatkan 2.
// 3. [4, 16, 36].toList() akan menghasilkan [4, 16, 36] karena hasil dari map akan diubah menjadi List.
// Sehingga hasil akhir dari kode di atas adalah [4, 16, 36].
