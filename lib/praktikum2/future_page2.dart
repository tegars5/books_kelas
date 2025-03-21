import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FuturePage2 extends StatefulWidget {
  const FuturePage2({super.key});

  @override
  State<FuturePage2> createState() => _FuturePage2State();
}

class _FuturePage2State extends State<FuturePage2> {
  String result = '';

  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/VYurDwAAQBAJ';
    final uri = Uri.https(authority, path);
    return http.get(uri);
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tegar Saputra')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                count();
              },
              child: const Text('GO!'),
            ),
            const SizedBox(height: 40),
            Text('Hasil : $result'),
          ],
        ),
      ),
    );
  }
}
