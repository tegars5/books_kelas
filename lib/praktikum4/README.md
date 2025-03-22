### 2. Hasil Praktikum Soal no 7

**Tampilan hasil dalam bentuk GIF:**
![Hasil Praktikum GIF](/assets/images/soal_7.gif)

## Soal no 8

# Perbedaan Kode Langkah 1 dan Langkah 4

## Langkah 1: Menggunakan FutureGroup

`FutureGroup` digunakan untuk mengelompokkan beberapa `Future` sebelum memprosesnya.

- `FutureGroup` membutuhkan metode `.add()` untuk menambahkan `Future` secara eksplisit.
- Harus dipanggil `.close()` sebelum bisa mendapatkan hasilnya.
- **Keuntungan**: Lebih fleksibel karena bisa menambahkan `Future` secara dinamis sebelum ditutup.

### Contoh Kode Langkah 1:

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

## Langkah 4: Menggunakan Future.wait()

`Future.wait()` langsung menjalankan beberapa `Future` secara paralel.

- Tidak perlu `.add()` atau `.close()`, cukup masukkan daftar `Future` dalam array.
- **Keuntungan**: Simpel dan lebih mudah digunakan untuk menunggu banyak `Future`.

### Contoh Kode Langkah 4:

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

## Kesimpulan

- **`FutureGroup`** lebih fleksibel, cocok untuk kasus di mana daftar `Future` bisa bertambah secara dinamis sebelum dijalankan.
- **`Future.wait()`** lebih sederhana dan langsung mengeksekusi semua `Future` dalam daftar.
- Jika hanya ingin menunggu beberapa `Future` tanpa menambahkannya secara dinamis, gunakan `Future.wait()` untuk kode yang lebih ringkas.
