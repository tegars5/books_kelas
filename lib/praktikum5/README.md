### Hasil Praktikum 5 Soal no 9

**Tampilan hasil dalam bentuk GIF:**
![Hasil Praktikum GIF](/assets/images/soal_9.gif)

## Hasil praktikum 5 soal no 10

# README: Future Handling in Dart

## Soal 10

**Instruksi:**

- Panggil method `handleError()` di dalam `ElevatedButton`, lalu jalankan program.
- Catat hasil yang ditampilkan.

## Hasil Eksekusi

Ketika tombol `ElevatedButton` ditekan dan metode `handleError()` dijalankan, hasilnya tergantung pada apakah terjadi error atau tidak:

1. Jika `Future` berhasil diselesaikan tanpa error:

   - **Result**: `'Success'` akan ditampilkan di UI.
   - **Console Output**: `'Complete'` akan dicetak.

2. Jika `Future` mengalami error:
   - **Result**: Pesan error akan ditampilkan di UI.
   - **Console Output**: `'Complete'` tetap dicetak karena `whenComplete()` akan selalu dieksekusi.

---

## Perbedaan Kode Langkah 1 dan Langkah 4

### **Langkah 1: Menggunakan `FutureGroup`**

- `FutureGroup` digunakan untuk mengelompokkan beberapa `Future` sebelum diproses.
- Harus menambahkan setiap `Future` dengan `.add()` dan memanggil `.close()` sebelum mendapatkan hasil.
- Fleksibel untuk menambahkan `Future` secara dinamis sebelum ditutup.

**Contoh Kode:**

```dart
FutureGroup<int> futureGroup = FutureGroup<int>();
futureGroup.add(returnOneAsync());
futureGroup.add(returnTwoAsync());
futureGroup.add(returnThreeAsync());
futureGroup.close();

futureGroup.future.then((List<int> value) {
  int total = value.reduce((a, b) => a + b);
  setState(() {
    result = total.toString();
  });
});
```

### **Langkah 4: Menggunakan `Future.wait()`**

- `Future.wait()` langsung menjalankan semua `Future` secara paralel.
- Tidak perlu menambahkan `Future` satu per satu atau memanggil `.close()`.
- Lebih sederhana dan langsung menunggu semua `Future` selesai.

**Contoh Kode:**

```dart
final futures = Future.wait<int>([
  returnOneAsync(),
  returnTwoAsync(),
  returnThreeAsync(),
]);

futures.then((List<int> value) {
  int total = value.reduce((a, b) => a + b);
  setState(() {
    result = total.toString();
  });
});
```

### **Kesimpulan**

- `FutureGroup` lebih fleksibel karena memungkinkan penambahan `Future` secara dinamis sebelum ditutup.
- `Future.wait()` lebih ringkas dan langsung mengeksekusi semua `Future` secara bersamaan.
- Jika daftar `Future` sudah tetap dan tidak berubah, `Future.wait()` lebih efisien.
- Jika daftar `Future` dapat berubah sebelum dieksekusi, `FutureGroup` lebih cocok digunakan.

🚀 **Gunakan `Future.wait()` untuk kode yang lebih simpel, gunakan `FutureGroup` jika butuh fleksibilitas tambahan.**
