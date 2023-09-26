// import 'package:kalkulator_sederhana/kalkulator_sederhana.dart'as kalkulator_sederhana;
import 'dart:io';
import 'operasi.dart';

void main() {
  var ulang = 'Y';
  var operasi = Operasi();

  print('Kalkulator Sederhana');
  print('====================');
  while (ulang == 'Y') {
    masukanAngka1(operasi);
    masukanAngka2(operasi);
    masukanPilihan(operasi);
    aritmatika(operasi);

    stdout.write('Ingin melakukan operasi lain (Y/N) : ');
    ulang = stdin.readLineSync()!;
    print('');
  }
}
