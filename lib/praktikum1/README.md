![Hasil Capture JSON dari Google Books](assets/images/hasil_Api.JPG)

## Soal 3 – Penjelasan Kode: `substring` dan `catchError`

### 1. `substring`

- `value.body.toString()` mengubah isi **body** respons HTTP menjadi string.
- `.substring(0, 450)` mengambil **450 karakter pertama** dari respons.
- Tujuannya agar teks yang ditampilkan tidak terlalu panjang dan **menghindari overflow** pada UI.
- Jika respons memiliki kurang dari 450 karakter, pemanggilan `substring()` bisa menyebabkan error.

### 2. `catchError`

- `catchError` digunakan untuk **menangani error** yang mungkin terjadi saat memanggil `getData()`.
- Jika terjadi error (misalnya **koneksi buruk** atau **URL tidak valid**), maka `result` akan diisi dengan teks **"An error occurred"**.
- Setelah itu, `setState(() {})` dipanggil untuk memperbarui UI, sehingga pengguna tahu bahwa ada error yang terjadi.
- Ini mencegah aplikasi crash akibat **kesalahan dalam Future**.

### gif

![soal-3](assets/images/soal_3.gif)
