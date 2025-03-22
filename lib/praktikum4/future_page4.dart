import 'dart:async';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FuturePage4 extends StatefulWidget {
  const FuturePage4({super.key});

  @override
  State<FuturePage4> createState() => _FuturePage4State();
}

class _FuturePage4State extends State<FuturePage4> {
  String result = '';
  // Fungsi FutureGroup untuk menjalankan beberapa async sekaligus
  void returnFG() {
    FutureGroup<int> futureGroup = FutureGroup<int>();

    futureGroup.add(returnOneAsync());
    futureGroup.add(returnTwoAsync());
    futureGroup.add(returnThreeAsync());

    futureGroup.close();

    futureGroup.future.then((List<int> value) {
      int total = 0;
      for (var element in value) {
        total += element;
      }
      setState(() {
        result = total.toString();
      });
    });
  }

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
                returnFG();
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
