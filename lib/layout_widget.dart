import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layuot contoh",
            style: TextStyle(color: Color.fromARGB(255, 255, 255, 255))),
        backgroundColor: const Color.fromARGB(255, 241, 167, 211),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("Images/logo_ypc.png"), const Center(),
          const SizedBox(height: 10),
          const Text(
            'SMK YPC Tasikmalaya',
            style: TextStyle(
                color: Color.fromARGB(255, 241, 167, 211),
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
