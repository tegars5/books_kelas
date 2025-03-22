import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  NavigationSecondState createState() => NavigationSecondState();
}

class NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xFF131426,
      ), // warna latar tetap mengikuti yang sebelumnya
      appBar: AppBar(
        title: const Text(
          'Second Screen - Tegar Saputra',
          style: TextStyle(
            color: Colors.white,
          ), // teks tetap putih agar kontras
        ),
        backgroundColor: const Color(
          0xFF1B1D36,
        ), // warna appbar tetap gelap sesuai sebelumnya
        iconTheme: const IconThemeData(
          color: Colors.white,
        ), // ikon kembali tetap putih
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, const Color(0xFFF9A8D4));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF9A8D4),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 16,
                ),
              ),
              child: const Text('Pink'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, const Color(0xFFF87171)); // Kita Red
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF87171),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 16,
                ),
              ),
              child: const Text('Red'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  const Color(0xFFFACC15),
                ); // Yellow
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFACC15),
                foregroundColor: Colors.black,
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 16,
                ),
              ),
              child: const Text('Yellow'),
            ),
          ],
        ),
      ),
    );
  }
}
