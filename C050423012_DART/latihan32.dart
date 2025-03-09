void proses(fungsi) {
  print(fungsi(2) + 50);
}

void main() {
  proses((x) => 100*x); //250
  proses((x) => 100/x); //100
}
