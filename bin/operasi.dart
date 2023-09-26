class Operasi {
  double bil1;
  double bil2;
  String operator;

  Operasi(this.bil1, this.bil2, this.operator);

  void aritmatika() {
    switch (operator) {
      case '1':
        print(bil1 + bil2);
        break;
      case '2':
        print(bil1 - bil2);
        break;
      case '3':
        print(bil1 * bil2);
        break;
      case '4':
        try {
          bil1 ~/ bil2;
          print(bil1 / bil2);
        } catch (e) {
          print('Eror : Angka tidak bisa dibagi nol');
        }
        break;
      default:
        print('Operasi tidak tersedia');
        break;
    }
  }
}
