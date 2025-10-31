// Modul 4 - Conditional Statements
// Dibuat oleh: Hilmi Khaidar Nabilla

void main() {
  // Contoh 1: If - Else If - Else
  int nilai = 40;

  if (nilai >= 90) {
    print('Nilai kamu A - Hebat banget!');
  } else if (nilai >= 80) {
    print('Nilai kamu B - Bagus!');
  } else if (nilai >= 70) {
    print('Nilai kamu C - Cukup baik.');
  } else if (nilai >= 60) {
    print('Nilai kamu D - Perlu belajar lagi.');
  } else {
    print('Nilai kamu E - Kamu harus semangat belajar lagi!');
  }

  print('--------------------------------');

  // Contoh 2: Switch - Case
  String hari = 'Jumat';

  switch (hari) {
    case 'Senin':
      print('Mulai minggu baru, semangat!');
      break;
    case 'Rabu':
      print('Pertengahan minggu, tetap produktif!');
      break;
    case 'Jumat':
      print('Hampir weekend!');
      break;
    case 'Minggu':
      print('Waktunya istirahat.');
      break;
    default:
      print('Hari biasa.');
  }
}
