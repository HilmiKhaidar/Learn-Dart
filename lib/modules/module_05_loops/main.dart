// Modul 5 - Loops (Perulangan)
// Dibuat oleh: Hilmi Khaidar Nabilla

void main() {
  // 1️⃣ For loop
  print('=== For Loop ===');
  for (int i = 1; i <= 5; i++) {
    print('Perulangan ke-$i');
  }

  print('--------------------------');

  // 2️⃣ While loop
  print('=== While Loop ===');
  int hitung = 5;
  while (hitung > 0) {
    print('Countdown: $hitung');
    hitung--;
  }

  print('--------------------------');

  // 3️⃣ Do-While loop
  print('=== Do-While Loop ===');
  int j = 0;
  do {
    print('Do-while dijalankan minimal 1x (j = $j)');
    j++;
  } while (j < 1);

  print('--------------------------');

  // 4️⃣ Break dan Continue
  print('=== Break & Continue ===');
  for (int i = 1; i <= 10; i++) {
    if (i == 8) {
      print('Loop dihentikan di angka $i (break)');
      break;
    }
    if (i % 2 == 0) {
      continue; // lewati angka genap
    }
    print('Angka ganjil: $i');
  }
}
