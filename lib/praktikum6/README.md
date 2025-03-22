# Praktikum Soal 12

## Deskripsi
Pada soal ini, kita menambahkan delay pada method `getPosition()` menggunakan kode berikut:

```dart
await Future.delayed(const Duration(seconds: 3));
```

Tujuan dari penambahan delay ini adalah untuk memastikan animasi loading (`CircularProgressIndicator`) terlihat sebelum koordinat GPS diperoleh.

## Hasil Praktikum
- Jika dijalankan di perangkat mobile dengan izin lokasi yang diaktifkan, aplikasi akan menampilkan koordinat GPS setelah 3 detik.
- Jika dijalankan di browser, kemungkinan koordinat GPS tidak diperoleh karena browser memerlukan izin khusus atau tidak mendukung fitur `Geolocator` secara penuh.
- Animasi loading (`CircularProgressIndicator`) akan tampil selama 3 detik sebelum hasilnya muncul.

## Mengapa Koordinat GPS Tidak Muncul di Browser?
Beberapa alasan mengapa koordinat GPS mungkin tidak muncul di browser:
1. **Izin Lokasi**: Browser memerlukan izin eksplisit dari pengguna untuk mengakses lokasi.
2. **Dukungan API**: `Geolocator` menggunakan API yang lebih efektif di perangkat mobile dibandingkan browser.
3. **Konfigurasi HTTPS**: Beberapa browser tidak mengizinkan akses lokasi kecuali melalui koneksi HTTPS.



