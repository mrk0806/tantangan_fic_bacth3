import 'dart:math';

/*

1.Buatlah sebuah class bernama Titik yang digunakan untuk menyimpan sebuah titik koordinat.

Setiap titik mempunyai atribut posisi X dan atribut posisi Y.
Class ini harus dapat melakukan hal berikut :
Memberikan nilai default (X=0, Y=0) ketika X Dan Y Belum didefinisikan.
Mengisi Nilai X
Mengisi Nilai Y
Mengisi Nilai X Dan Y(sekaligus)
Menampilkan nilai X Dan Y
Pindah ke Koordinat Lain (berdasarkan jarak atau ke titik tertentu
Menghitung Jarak Ke Titik Lain

*/

class Titik {
  double nilai_x;
  double nilai_y;

  // Memberikan nilai default (X=0, Y=0) ketika X Dan Y Belum didefinisikan.
  Titik({this.nilai_x = 0, this.nilai_y = 0});

  //Mengisi Nilai X.
  void setnilaiX(double valueX) {
    this.nilai_x = valueX;
    print('Mengisi nilai X = $nilai_x.');
  }

  //Mengisi Nilai Y.
  void setnilaiY(double valueY) {
    this.nilai_y = valueY;
    print('Mengisi nilai Y = $nilai_y.');
  }

  //Mengisi Nilai X Dan Y (sekaligus).
  void setnilaiXY(double valueX, double valueY) {
    this.nilai_x = valueX;
    this.nilai_y = valueY;
  }

  //Menampilkan Nilai X Dan Y.
  void showNilaiXY() {
    print('Menampilkan Nilai X = ${this.nilai_x} & Nilai Y = ${this.nilai_y}.');
  }

  //Pindah ke Koordinat Lain (berdasarkan jarak atau ke titik tertentu.
  void setNewCoordinate(double valueX, double valueY) {
    this.nilai_x = valueX;
    this.nilai_y = valueY;
    print('Pindah ke koordinat lain Titik X = $nilai_x - Titik Y = $nilai_y.');
  }

  //Menghitung Jarak Ke Titik Lain.
  double calculateDistance(Titik titik) {
    double titikX = this.nilai_x - titik.nilai_x;
    double titikY = this.nilai_y - titik.nilai_y;
    return sqrt(titikX * titikX + titikY * titikY);
  }
}

void main() {
  Titik titik = Titik();
  print(
      'Memberikan nilai default = ${titik.nilai_x},${titik.nilai_y}. ketika X Dan Y Belum didefinisikan');
  print('----------');
  titik.setnilaiX(-41.77857);
  print('----------');
  titik.setnilaiY(-17.23044);
  print('----------');
  titik.setnilaiXY(-41.77857, -17.23044);
  titik.showNilaiXY();
  print('----------');
  Titik titikNew = Titik();
  titikNew.setNewCoordinate(23.55566, 14.37468);
  print('----------');
  double jarak = titik.calculateDistance(titikNew);
  print(
    "Menghitung Jarak Ke Titik Lain. $jarak",
  );
}
