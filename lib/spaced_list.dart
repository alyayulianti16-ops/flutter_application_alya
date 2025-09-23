import 'package:flutter/material.dart';

class SpacedList extends StatelessWidget {
  const SpacedList({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemsCount = 4;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Spaced list',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 174, 228),
      ),
      body: LayoutBuilder(builder: (context, contraints) {
        return SingleChildScrollView(
            child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: contraints.maxHeight)),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ));
      }),
    );
  }
}
