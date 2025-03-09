void printhasil() {
  print('Load data dari Web');
  ambilHasil();
  print('ini akan di eksekusi walaupun pengambilan data belum selesai');
}

void cetaknama(String nama) {
  print('selesai ambil data; nama = $nama');
}

Future<void> ambilHasil() async {
  await Future.delayed(
    const Duration(seconds: 3),
    () => cetaknama('Budi Martami'),
  );
}

void main() {
  countSecond(4);
  printhasil();
}

void countSecond(int s){
  for ( var i = 1; i <= s; i++ ) {
    Future.delayed(
      Duration(seconds: i),
      () => print(i),
    );
  }
}
