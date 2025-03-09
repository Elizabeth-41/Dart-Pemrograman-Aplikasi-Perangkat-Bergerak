void main() {
  List<Map<String, dynamic>> pegawai = [
    {"nama": "Budi", "hari_lembur": 5, "gaji": 10},
    {"nama": "Wati", "hari_lembur": 2, "gaji": 15},
  ];
  print(pegawai);

  List<Map<String, dynamic>> pendapatan = [
    for (Map<String, dynamic> p in pegawai)
      {"nama": p["nama"], "penghasilan": p["gaji"] +p["hari_lembur"] *0.5},
  ];
  print(pendapatan);
}
