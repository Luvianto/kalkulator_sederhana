// import 'package:kalkulator_sederhana/kalkulator_sederhana.dart'as kalkulator_sederhana;
import 'dart:io';
import 'operasi.dart';

void main() {
  var ulang = 'Y';
  while (ulang == 'Y') {
    print('Kalkulator Sederhana');
    print('====================');
    try {
      stdout.write('Masukkan angka pertama :');
      var bil1 = double.parse(stdin.readLineSync()!);
      stdout.write('Masukkan angka kedua :');
      var bil2 = double.parse(stdin.readLineSync()!);

      print('Pilih jenis operasi aritmatika :');
      print('1. Tambah');
      print('2. Kurang');
      print('3. Kali');
      print('4. Bagi');

      stdout.write('Pilihan (1/2/3/4) :');
      var operasi = stdin.readLineSync()!;

      var hitung = Operasi(bil1, bil2, operasi);
      hitung.aritmatika();
    } on FormatException {
      print('Error : Tidak menerima input selain angka');
    } finally {
      print('Apakah anda ingin melakukan perhitungan lain?');
      stdout.write('(Y/T) : ');
      ulang = stdin.readLineSync()!;
    }
  }
}
