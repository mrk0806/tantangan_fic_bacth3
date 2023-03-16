import 'dart:math';

/*
2. Buatlah class Calculator
Atribut : Operan 1 bertipe double dan Operan 2 bertipe double
Method :
isiOperan1(double x) : Mengisi atribut operan 1 dengan nilai x 
isiOperan2(double x) : Mengisi atribut operan 2 dengan nilai x
tambah()
kurang()
kali()
bagi()
pangkat()

*/

class Calculator {
  // Operan 1 bertipe double dan Operan 2 bertipe double
  double operan1, operan2;

  Calculator(this.operan1, this.operan2);

  // isiOperan1(double x) : Mengisi atribut operan 1 dengan nilai x
  void setOperan1({double? value}) {
    this.operan1 = value ?? 0;
  }

  // isiOperan2(double x) : Mengisi atribut operan 2 dengan nilai x
  void setOperan2({double? value}) {
    this.operan2 = value ?? 0;
  }

  // tambah()
  double tambah() {
    double hasil = (this.operan1 + this.operan2);
    return hasil;
  }

  // kurang()
  double kurang() {
    double hasil = (this.operan1 - this.operan2);
    return hasil;
  }

  // kali()
  double kali() {
    double hasil = (this.operan1 * this.operan2);
    return hasil;
  }

  // bagi()
  double bagi() {
    double hasil = (this.operan1 / this.operan2);
    return hasil;
  }

  // pangkat()
  num pangkat() {
    num hasil = pow(this.operan1, this.operan2);
    return hasil;
  }
}

void main() {
  Calculator calculator = Calculator(8, 2);
  print('Operan 1 = ${calculator.operan1}');
  print('Operan 2 = ${calculator.operan2}');

  print('----------');
  double tambah = calculator.tambah();
  print('${calculator.operan1} + ${calculator.operan2} = $tambah');

  print('----------');
  double kurang = calculator.kurang();
  print('${calculator.operan1} - ${calculator.operan2} = $kurang');

  print('----------');
  double kali = calculator.kali();
  print('${calculator.operan1} * ${calculator.operan2} = $kali');

  print('----------');
  double bagi = calculator.bagi();
  print('${calculator.operan1} : ${calculator.operan2} = $bagi');

  print('----------');
  num pangkat = calculator.pangkat();
  print('${calculator.operan1} ^ ${calculator.operan2} = $pangkat');
}
