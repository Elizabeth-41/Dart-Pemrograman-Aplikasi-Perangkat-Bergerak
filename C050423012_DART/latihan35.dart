class Mahasiswa {
  String nim="";
  String nama="";
  String _internal = "x";

  Mahasiswa(String nim, String nama) {
    this.nim = nim;
    this.nama = nama;
  }
  void cetak() {
    print(nim);
    print(nama);
    print(_internal);
  }
}
void main() {
  Mahasiswa mhs = Mahasiswa("1122", "Budi");
  mhs.nim = "1234";
  mhs.nama = "Wati";
  mhs.cetak();
}


