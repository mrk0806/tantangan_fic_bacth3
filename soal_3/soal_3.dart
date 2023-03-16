/*
3. Catatan: Attribute Quis, UTS, dan UAS tidak boleh di assign langsung, melainkan melalui setter dan getter
*/

class Nilai {
  double quis;
  double uts;
  double uas;

  Nilai(this.quis, this.uts, this.uas);

  void setQuis(double x) {
    this.quis = x;
  }

  void setUts(double x) {
    this.uts = x;
  }

  void setUas(double x) {
    this.uas = x;
  }

  double getNA() {
    double na;
    na = (((20 / 100) * quis) + ((30 / 100) * uts) + ((50 / 100) * uas));
    return na;
  }

  String getIndex(double na) {
    String index = '';
    if (na > 80 && na <= 100) {
      index = 'A';
    } else if (na > 68 && na < 80) {
      index = 'B';
    } else if (na > 56 && na < 68) {
      index = 'C';
    } else if (na >= 45 && na < 56) {
      index = 'D';
    } else if (na >= 0 && na < 45) {
      index = 'E';
    } else {
      index = '';
    }
    return index;
  }

  String getKeterangan(String index) {
    String keterangan = '';
    if (index == 'A') {
      keterangan = 'Sangat Baik';
    } else if (index == 'B') {
      keterangan = 'Baik';
    } else if (index == 'C') {
      keterangan = 'Cukup';
    } else if (index == 'D') {
      keterangan = 'Kurang';
    } else if (index == 'E') {
      keterangan = 'Sangat Kurang';
    } else {
      keterangan = '';
    }
    return keterangan;
  }
}

void main() {
  final nilai = Nilai(0.0, 0.0, 0.0);

  nilai.setQuis(70.0);
  nilai.setUts(70.0);
  nilai.setUas(70.0);

  print('nilai quis : ${nilai.quis}');
  print('nilai uts : ${nilai.uts}');
  print('nilai uas : ${nilai.uas}');
  print('--------');
  print('getNA : ${nilai.getNA()}');
  print('getindex : ${nilai.getIndex(nilai.getNA())}');
  print(
      'getKeterangan : ${nilai.getKeterangan(nilai.getIndex(nilai.getNA()))}');
}
