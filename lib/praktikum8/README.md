# Praktikum 8 - Soal 16

## Deskripsi

Pada praktikum ini, kita mencoba mengganti warna latar belakang halaman pertama dengan warna yang dipilih dari halaman kedua.

## Jawaban Soal 16

### Apa yang terjadi ketika tombol ditekan?

Ketika tombol ditekan, aplikasi akan berpindah ke halaman kedua (`NavigationSecond`). Di halaman ini, terdapat tiga tombol dengan warna yang berbeda. Jika salah satu tombol ditekan, halaman akan kembali ke halaman pertama (`NavigationFirst`), dan warna latar belakang akan berubah sesuai dengan warna tombol yang ditekan.

### Mengapa demikian?

Hal ini terjadi karena kita menggunakan `Navigator.pop(context, color)`, yang mengembalikan nilai warna dari halaman kedua ke halaman pertama. Warna yang dikembalikan kemudian disimpan dalam variabel `color` di halaman pertama dan ditampilkan dengan `setState()`, sehingga UI diperbarui secara dinamis.

## Perubahan Warna

Pada langkah ke-5, saya mengganti warna dengan warna favorit saya:

- **Pink** → Tetap sama (`0xFFF9A8D4`)
- **Red** → Tetap sama (`0xFFF87171`)
- **Yellow** → Tetap sama (`0xFFFACC15`)

## Hasil Praktikum

![Hasil Praktikum](/assets/images/soal_16.gif)

