import 'package:flutter/material.dart';
import 'package:flutter_application_alya/spaced_list.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'aplikasi flutter',
      home: SpacedList(),
    );
  }
}
