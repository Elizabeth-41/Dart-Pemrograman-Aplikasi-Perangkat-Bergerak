import 'dart:isolate';

void main() {
  Isolate.spawn(counter, 10);

  for (int i = 0; i < 5; i++) {
    print('Counter: $i');
  }
}

void counter(int count) {
  for (int i = 0; i < count; i++) {
    print('Counter isolate: $i');
  }
}
