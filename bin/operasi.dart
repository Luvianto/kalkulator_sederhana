import 'dart:io';

class Operasi {
  double bil1 = 0;
  double bil2 = 0;
  int pilihan = 0;

  set setBil1(double bil1) => this.bil1 = bil1;
  set setBil2(double bil2) => this.bil2 = bil2;
  set setPilihan(int pilihan) => this.pilihan = pilihan;

  void tambah() => print(bil1 + bil2);
  void kurang() => print(bil1 - bil2);
  void kali() => print(bil1 * bil2);
  void bagi() {
    try {
      bil1 ~/ bil2;
      print(bil1 / bil2);
    } catch (e) {
      print('Eror : Angka tidak bisa dibagi nol');
    }
  }
}

// note untuk ke depan :
// Semua fungsi dibawah mungkin bisa dijadikan method class Operasi,
// tapi sedikit malas karena sudah terlanjur

void aritmatika(Operasi operasi) {
  stdout.write('Hasil : ');
  switch (operasi.pilihan) {
    case 1:
      operasi.tambah();
      break;
    case 2:
      operasi.kurang();
      break;
    case 3:
      operasi.kali();
      break;
    case 4:
      operasi.bagi();
      break;
    default:
      print('Operasi tidak tersedia');
      masukanPilihan(operasi);
      break;
  }
}

void masukanAngka1(Operasi operasi) {
  try {
    stdout.write('Masukkan angka pertama : ');
    var bil1 = double.parse(stdin.readLineSync()!);
    operasi.setBil1 = bil1;
    print('');
  } on FormatException {
    print('Error : Tidak menerima input selain angka');
    masukanAngka1(operasi);
  }
}

void masukanAngka2(Operasi operasi) {
  try {
    stdout.write('Masukkan angka kedua   : ');
    var bil2 = double.parse(stdin.readLineSync()!);
    operasi.setBil2 = bil2;
    print('');
  } on FormatException {
    print('Error : Tidak menerima input selain angka');
    masukanAngka2(operasi);
  }
}

void masukanPilihan(Operasi operasi) {
  try {
    print('Pilih jenis operasi aritmatika :');
    print('1. Tambah');
    print('2. Kurang');
    print('3. Kali');
    print('4. Bagi');
    print('');

    stdout.write('Pilihan (1/2/3/4) :');
    var pilihan = int.parse(stdin.readLineSync()!);
    operasi.setPilihan = pilihan;
    print('');
  } on FormatException {
    print('Eror : Masukan angka sesuai pilihan yang tersedia');
    masukanPilihan(operasi);
  }
}
