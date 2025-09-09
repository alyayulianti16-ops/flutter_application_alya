import 'package:flutter/material.dart';

// ignore: camel_case_types
class propil extends StatelessWidget {
  const propil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil'),
      ),
      body: Column(
        children: [
          Image.asset(
            'images/propil.png',
            width: 150,
          ),
          const SizedBox(
            height: 16,
          ),
          const Text(
            'Alya Yulianti',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Siswi SMK YPC",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.call),
                  Text('call'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.map),
                  Text('route'),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.share),
                  Text('share'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
