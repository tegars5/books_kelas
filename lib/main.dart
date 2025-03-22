import 'package:asynchronous/praktikum1/future_page.dart';
import 'package:flutter/material.dart';
import 'package:asynchronous/praktikum2/future_page2.dart';
import 'package:asynchronous/praktikum3/future_page3.dart';
import 'package:async/async.dart';

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
      home: const FuturePage3(),
    );
  }
}
