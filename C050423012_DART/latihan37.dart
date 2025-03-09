class Mhs {
  void hitungYudisium(){

  }
}

class mhsS1 extends Mhs {
  @override
  void hitungYudisium(){
    print("Yudisium S1");
  }
}

class mhsS2 extends Mhs {
  @override
  void hitungYudisium(){
    print("Yudisium S2");
  }
}

void main(){
  List<Mhs> listMhs = [];
  listMhs.add(mhsS1());
  listMhs.add(mhsS2());
  for (Mhs objMhs in listMhs){
    objMhs.hitungYudisium();
  }
}