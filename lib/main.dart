import 'package:asynchronous/praktikum1/future_page.dart';
import 'package:asynchronous/praktikum7/geolocation2.dart';
import 'package:flutter/material.dart';
import 'package:asynchronous/praktikum2/future_page2.dart';
import 'package:asynchronous/praktikum3/future_page3.dart';
import 'package:asynchronous/praktikum4/future_page4.dart';
import 'package:asynchronous/praktikum5/future_page5.dart';
import 'package:asynchronous/praktikum6/geolocation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Future page - Tegarsaputra',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const LocationScreen2(),
    );
  }
}
