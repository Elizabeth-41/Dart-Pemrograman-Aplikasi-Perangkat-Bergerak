void main() {
  List<Map<String, dynamic>> pegawai = [
    {"nama": "budi", "gaji": 5},
    {"nama": "wati", "gaji": 17},
  ];

  var pajak = pegawai.map((p) {
    double tarifPajak = (p["gaji"] < 10) ? 0.15 : 0.20;
    return {
      "nama": p["nama"],
      "gaji": p["gaji"],
      "pajak": tarifPajak,
    };
  }).toList();

  print(pajak);
}
