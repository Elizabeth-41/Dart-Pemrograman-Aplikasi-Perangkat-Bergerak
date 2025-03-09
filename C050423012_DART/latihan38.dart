Future<void> prosesPanjang() {
  return Future.delayed(
    const Duration(seconds: 2), () => print('Methode Selesai...'));
}

void main() {
  prosesPanjang();
  print('proses yang Panjang');
}
