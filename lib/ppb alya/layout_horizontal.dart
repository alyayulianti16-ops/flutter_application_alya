import 'package:flutter/material.dart';

class LayoutHorizontal extends StatelessWidget {
  const LayoutHorizontal({super.key});

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView Horizontal')),
      body: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(width: 160, color: const Color.fromARGB(255, 255, 172, 223)),
            Container(width: 160, color: const Color.fromARGB(255, 255, 138, 210)),
            Container(width: 160, color: const Color.fromARGB(255, 238, 102, 193)),
            Container(width: 160, color: const Color.fromARGB(255, 241, 76, 186)),
            Container(width: 160, color: const Color.fromARGB(255, 226, 31, 161)),
          ],
        ),
      ),
    );

  }
}