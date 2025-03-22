# Navigation Dialog Screen

## Hasil Praktikum

Pada praktikum ini, dilakukan pengujian terhadap tombol pada dialog pemilihan warna.

### 1. Apa yang terjadi saat menekan setiap tombol?
- **Red:** Latar belakang berubah menjadi merah.
- **Green:** Latar belakang berubah menjadi hijau.
- **Blue:** Dialog muncul kembali tanpa menutup dialog sebelumnya karena `_showColorDialog(context);` dipanggil kembali dalam onPressed(). Hal ini menyebabkan dialog terus terbuka tanpa mengubah warna latar belakang.

### 2. Mengapa demikian?
- Tombol `Red` dan `Green` berfungsi dengan baik karena mengubah state warna (`color`) dan kemudian menutup dialog dengan `Navigator.pop(context, color);`.
- Tombol `Blue` menyebabkan dialog tetap terbuka karena tidak ada `Navigator.pop(context)`, melainkan memanggil kembali `_showColorDialog(context)`, sehingga dialog terus muncul tanpa menutup yang sebelumnya.

## Modifikasi Warna Favorit

Warna telah diganti dengan warna favorit sebagai berikut:
- **Red** → **Purple** (`Colors.purple.shade700`)
- **Green** → **Orange** (`Colors.orange.shade700`)
- **Blue** → **Cyan** (`Colors.cyan.shade700`)

## Hasil Praktikum (GIF)
Berikut adalah hasil praktikum dalam bentuk GIF:

![GIF Praktikum](/assets/images/soal_17)


