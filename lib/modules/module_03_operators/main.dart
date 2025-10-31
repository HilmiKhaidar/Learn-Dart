// Modul 3 - Operators
// Dibuat oleh: Hilmi Khaidar Nabilla

void main() {
  int a = 10;
  int b = 5;

  // Operator aritmatika
  print('Hasil a + b = ${a + b}');
  print('Hasil a - b = ${a - b}');
  print('Hasil a * b = ${a * b}');
  print('Hasil a / b = ${a / b}');
  print('Hasil a ~/ b (pembagian bulat) = ${a ~/ b}');
  print('Sisa bagi a % b = ${a % b}');
  print('--------------------------------');

  // Operator perbandingan
  print('Apakah a > b? ${a > b}');
  print('Apakah a < b? ${a < b}');
  print('Apakah a == b? ${a == b}');
  print('Apakah a != b? ${a != b}');
  print('--------------------------------');

  // Operator logika
  bool kondisi1 = a > b; // true
  bool kondisi2 = b < 10; // true

  print('Apakah (a > b && b < 10)? ${kondisi1 && kondisi2}');
  print('Apakah (a > b || b > 10)? ${kondisi1 || b > 10}');
  print('Apakah !(a > b)? ${!(a > b)}');
}
