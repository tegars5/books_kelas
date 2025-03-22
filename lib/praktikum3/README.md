# Penjelasan Kode – Soal 5

## 1. Langkah 2 - `Future getNumber()` dan `Completer`

### Kode
```dart
Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
}

Future calculate() async {
  await Future.delayed(const Duration(seconds: 5));
  completer.complete(42);
}
```

### Penjelasan
- **`Completer<int>()`** digunakan untuk mengontrol penyelesaian `Future` secara manual.
- Fungsi `getNumber()` akan mengembalikan `Future`, tetapi tidak langsung mengembalikan nilai.
- **`calculate()`** dijalankan untuk melakukan proses asinkron.
- Setelah **5 detik**, `calculate()` memanggil `completer.complete(42);`, yang menandakan bahwa operasi selesai dengan hasil `42`.

## 2. Mekanisme di `onPressed`

### Kode
```dart
onPressed: () {
  getNumber()
      .then((value) {
        setState(() {
          result = value.toString();
        });
      })
      .catchError((e) {
        setState(() {
          result = 'An error occurred';
        });
      });
},
```

### Penjelasan
- Ketika tombol ditekan, `getNumber()` dipanggil dan mengembalikan `Future`.
- **`.then((value) { ... })`** menangani hasil sukses dan menampilkan angka `42` di UI.
- Jika ada error dalam proses, **`.catchError((e) { ... })`** menangani kesalahan dan menampilkan teks **"An error occurred"**.

## 3. Hasil Praktikum
 **Tampilan hasil dalam bentuk GIF:**

![Hasil Praktikum GIF](/assets/images/soal_5.gif)