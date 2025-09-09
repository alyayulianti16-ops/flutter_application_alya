import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'aplikasi flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text("judul aplikasi",
              style: TextStyle(color: Color.fromARGB(255, 248, 5, 195))),
        ),
        body: const Center(
          child: Text('Hello World!', style: TextStyle(fontSize: 34)),
        ),
      ),
    );
  }
}
