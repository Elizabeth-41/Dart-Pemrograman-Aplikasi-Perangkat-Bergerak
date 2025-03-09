class Mahasiswa {
  String nim = "";
  String nama = "";
  int umur = 0; // Mengubah String ke int
  String _internal = "x"; // Tetap private

  // Constructor yang benar
  Mahasiswa(this.nim, this.nama);

  void cetak() {
    print(nim);
    print(nama);
    print(_internal);
  }

  void umur_mhs() {
    print(umur);
  }
}

void main() {
  Mahasiswa mhs = Mahasiswa("12345", "Budi"); // Menyesuaikan dengan constructor
  mhs.umur = 21;
  print(mhs.umur); // Output: 21
  mhs.umur = 210;
  print(mhs.umur); // Output: 210
}
