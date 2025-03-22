# 📌 W5: Soal 13 - FutureBuilder untuk Lokasi GPS

## Perbedaan UI dengan Praktikum Sebelumnya

Pada praktikum sebelumnya, lokasi diperoleh dalam `initState()` dan diperbarui melalui `setState()`, yang dapat menyebabkan **refresh tidak efisien** karena data langsung diproses dalam `initState()`.

Dengan **FutureBuilder**, UI secara **reaktif** menampilkan `CircularProgressIndicator()` saat proses berjalan, kemudian **otomatis menampilkan data lokasi saat Future selesai** tanpa perlu pemanggilan `setState()` manual.

## 🛠 Mengapa FutureBuilder Lebih Efisien?

**Lebih clean & readable**: Memisahkan logika pengambilan data dan UI dengan lebih baik.
**Reactive**: Future secara otomatis memperbarui tampilan saat selesai, tanpa perlu `setState()`.
**Lebih cepat & scalable**: Menghindari pemrosesan berulang di `initState()`.

---

## Hasil Praktikum (Capture GIF)

![Hasil Praktikum GIF](/assets/images/soal_13.gif)

# W5: Soal 14

## Perbedaan UI dengan Langkah Sebelumnya

Pada langkah ini, penggunaan **FutureBuilder** tetap diterapkan untuk menampilkan lokasi pengguna. Namun, perbedaan utama dibandingkan dengan langkah sebelumnya adalah:

1. **Handling State Lebih Baik**

   - Sebelumnya, jika terjadi error dalam mengambil lokasi, aplikasi hanya menampilkan "Unable to get location" tanpa detail error yang jelas.
   - Sekarang, jika terjadi error, akan muncul pesan **"Something terrible happened!"** yang lebih informatif.

2. **Penyederhanaan Struktur Kode**

   - Penanganan error dan data pada `FutureBuilder` lebih rapi dan langsung memberikan feedback kepada pengguna.

3. **Performa yang Lebih Baik**
   - Dengan pendekatan ini, UI lebih reaktif dan tidak perlu memproses ulang `Future` setiap kali terjadi perubahan state.

## Capture Hasil Praktikum

Berikut adalah GIF hasil capture dari praktikum ini:
![Hasil Praktikum](/assets/images/soal_14.gif)

---
