import 'package:flutter/material.dart';
import 'package:flutter_application_alya/tugas_mandiri_modul4.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'aplikasi flutter',
      home: LayuotlistItem(),
    );
  }
}
