import 'dart:async';
import 'dart:isolate';

Future<void> main() async {
  final p = ReceivePort();
  await Isolate.spawn(myIsolate, [p.sendPort, 51]);
  int hasil = await p.first;
  print('hasil: $hasil');
}

void myIsolate(List<dynamic> args) async {
  SendPort responPort = args[0];
  int param = args[1];

  int temp = 0;
  for (int i = 0; i <= param; i++) {
    temp = temp + i;
    print(i);
  }
  Isolate.exit(responPort, temp);
}
