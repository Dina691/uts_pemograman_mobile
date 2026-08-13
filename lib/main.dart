import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas Besar 1',
      home: const HalamanUtama(),
    );
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  final List<String> daftarGambar = [
    'assets/bebek.jfif',
    'assets/capybara.jfif',
    'assets/gajah.jfif',
    'assets/jerapah.jfif',
    'assets/kucing.jfif',
    'assets/kupukupu.jfif',
  ];

  int gambarSekarang = 0;

  void acakGambar() {
    setState(() {
      gambarSekarang = Random().nextInt(daftarGambar.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tugas Besar 1',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              height: 250,
              child: Image.asset(
                daftarGambar[gambarSekarang],
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: acakGambar,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.lightBlue,
                foregroundColor: Colors.white,
              ),
              child: const Text('Acak Gambar'),
            ),
          ],
        ),
      ),
    );
  }
}
