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

# 📌 Penjelasan Kode – Soal 5 & 6

## 🔹 Soal 5

### 1. Langkah 2 - `Future getNumber()` dan `Completer`

#### Kode

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

#### Penjelasan

- **`Completer<int>()`** digunakan untuk mengontrol penyelesaian `Future` secara manual.
- Fungsi `getNumber()` akan mengembalikan `Future`, tetapi tidak langsung mengembalikan nilai.
- **`calculate()`** dijalankan untuk melakukan proses asinkron.
- Setelah **5 detik**, `calculate()` memanggil `completer.complete(42);`, yang menandakan bahwa operasi selesai dengan hasil `42`.

### 2. Mekanisme di `onPressed`

#### Kode

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

#### Penjelasan

- Ketika tombol ditekan, `getNumber()` dipanggil dan mengembalikan `Future`.
- **`.then((value) { ... })`** menangani hasil sukses dan menampilkan angka `42` di UI.
- Jika ada error dalam proses, **`.catchError((e) { ... })`** menangani kesalahan dan menampilkan teks **"An error occurred"**.

### 3. Hasil Praktikum

**Tampilan hasil dalam bentuk GIF:**
![Hasil Praktikum GIF](/assets/images/soal_5.gif)

---

## 🔹 Soal 6

### Perbedaan antara Langkah 2 dengan Langkah 5-6

#### Penjelasan

- **Langkah 2:** Menggunakan **`Completer<int>()`** untuk menangani `Future` secara manual.
- **Langkah 5-6:** Menambahkan **penanganan error** dengan **try-catch** saat melakukan operasi asinkron.
- Pada **Langkah 6**, jika terjadi error, `completer.completeError('Terjadi kesalahan')` akan menangani kegagalan dengan memberikan respons error yang lebih informatif.

### 1. Perbedaan Kode

#### Kode pada Langkah 5

```dart
Future calculate() async {
  await Future.delayed(const Duration(seconds: 5));
  completer.complete(42);
}
```

#### Kode pada Langkah 6 (dengan Error Handling)

```dart
Future calculate() async {
  try {
    await Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
  } catch (_) {
    completer.completeError('Terjadi kesalahan');
  }
}
```

### 2. Hasil Praktikum

**Tampilan hasil dalam bentuk GIF:**
![Hasil Praktikum GIF](/assets/images/soal_6.gif)
