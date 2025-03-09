// Created At: 24 Januari 2020 | 10:00:00
Future<int> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 42);
}

void main() {
  print("tahap 1");

  fetchData().then((result) {
    print('Hasil: $result');
  }).catchError((error) {
    print('Error: $error');
  }).whenComplete(() {
    print('Selesai');
  });

  print("tahap 2");
}
