import 'package:flutter/material.dart';
import 'package:kuis_124210050/halaman_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kuis Mobile 124210050',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 231, 112, 192)),
        useMaterial3: true,
      ),
      home: halaman_grid(),
    );
  }
}

