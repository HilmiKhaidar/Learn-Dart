void main() {
  // Deklarasi variabel
  int umur = 21;
  double tinggi = 167;
  String nama = 'Hilmi Khaidar N';
  bool isActive = true;
  var kota = 'Cianjur';
  dynamic nilai = 95;

  // Menampilkan data
  print('Nama saya $nama, umur saya $umur tahun.');
  print('Tinggi saya $tinggi cm.');
  print('Saya berasal dari $kota.');
  print('Apakah aktif? $isActive');
  print('Nilai dynamic sekarang: $nilai');

  // Mengubah nilai dynamic
  nilai = 'Bisa diubah jadi teks';
  print('Nilai dynamic setelah diubah: $nilai');
}
