# Penjelasan Kode – Soal 4

## 1. Langkah 1 - `Future<int> returnOneAsync()`

```dart
Future<int> returnOneAsync() async {
  await Future.delayed(const Duration(seconds: 3));
  return 1;
}
```

- Fungsi ini menggunakan **Future** untuk melakukan operasi **asinkron**.
- `await Future.delayed(Duration(seconds: 3))` membuat fungsi menunggu **3 detik** sebelum mengembalikan nilai `1`.
- Fungsi ini **meniru pemrosesan data** yang membutuhkan waktu tertentu sebelum menghasilkan output.

## 2. Langkah 2 - `Future count()`

```dart
Future count() async {
  int total = 0;
  total = await returnOneAsync();
  total += await returnTwoAsync();
  total += await returnThreeAsync();
  setState(() {
    result = total.toString();
  });
}
```

- Fungsi ini **menghitung total** dari tiga operasi asinkron.
- `await returnOneAsync()` menunggu hasil dari `returnOneAsync()`, lalu nilainya ditambahkan ke `total`.
- Begitu juga dengan `returnTwoAsync()` dan `returnThreeAsync()`, masing-masing **menunggu 3 detik** sebelum mengembalikan angka `2` dan `3`.
- Setelah semua operasi selesai, nilai `total` diperbarui ke dalam `setState()`, sehingga **tampilan aplikasi ikut berubah**.

## 📌 Hasil Praktikum (GIF)

![Hasil Praktikum GIF](/assets/images/soal_4.gif)

---
