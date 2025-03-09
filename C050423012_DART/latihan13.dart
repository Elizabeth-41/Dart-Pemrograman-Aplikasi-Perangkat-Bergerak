Map<String, int> umur = {"rudi": 17, "susi": 12};
void main() {
  umur["wati"] = 19;
  umur["iwan"] = 21;
  print(umur);
  print(umur["wati"]);
  for(int u in umur.values)
  print(u);
}
