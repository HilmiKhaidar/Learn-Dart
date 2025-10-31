# Modul 2 — Variables & Data Types

## 🎯 Tujuan
- Mengenal dan menggunakan variabel di Dart.
- Mengetahui tipe data dasar di Dart.
- Mempelajari cara menampilkan data dengan `print()`.

## 📘 Materi
Dart memiliki beberapa tipe data utama:

| Tipe Data | Contoh |
|------------|---------|
| int | `int umur = 20;` |
| double | `double tinggi = 170.5;` |
| String | `String nama = 'Hilmi';` |
| bool | `bool isActive = true;` |
| var | `var kota = 'Cianjur'; // Dart otomatis mengenali tipe` |
| dynamic | `dynamic x = 10; x = 'Bisa diubah jadi teks';` |

### Interpolasi String
Gunakan `${}` untuk menampilkan nilai variabel dalam teks:
```dart
print('Nama saya $nama, umur saya $umur tahun');
