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
---

