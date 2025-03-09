import 'dart:isolate';

Future<void> main() async {
  ReceivePort myReceivePort = ReceivePort(); 
  Isolate.spawn(myIsolate, myReceivePort.sendPort);

  // Menerima SendPort dari Isolate
  SendPort mainSendPort = await myReceivePort.first;
  ReceivePort mainResponseReceivePort = ReceivePort();

  // Kirim pesan ke Isolate
  mainSendPort.send([
    "Ini pesan pertama",
    "Ini pesan kedua",
    mainResponseReceivePort.sendPort
  ]);

  // Menerima response dari Isolate
  final mResponse = await mainResponseReceivePort.first;
  print("Response dari isolate: $mResponse");
}

Future<void> myIsolate(SendPort mySendPort) async {
  ReceivePort mainReceivePort = ReceivePort();

  // Kirim SendPort ke main agar bisa menerima pesan
  mySendPort.send(mainReceivePort.sendPort);

  // Listen pesan dari main
  await for (var message in mainReceivePort) {
    if (message is List && message.length >= 3) {
      final msg1 = message[0];
      final msg2 = message[1];
      final SendPort mainResponseSendPort = message[2];

      print("Pesan diterima di myIsolate dari Main: $msg1 dan $msg2");

      for (int i = 0; i < 5; i++) {
        print('Counter di myIsolate: $i');
      }

      // Kirim pesan balik ke main
      mainResponseSendPort.send("Ini pesan dari myIsolate");
    }
  }
}
