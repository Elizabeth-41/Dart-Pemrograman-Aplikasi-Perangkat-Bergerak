import 'latihan40.dart';

Future<void> printHasil() async {
  print('Load data dari Web');
  String hasil = await ambilHasil();
  print('Hasil: $hasil');
}

Future<String> ambilHasil() {
  return Future.delayed(const Duration(seconds: 4), () => 'Budi Martami');
}

void main() {
  countSecond(4);
  printHasil();
}

void countSecond(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
