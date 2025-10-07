import 'package:flutter/material.dart';

class propil extends StatelessWidget {
  const propil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('tugas profil'),
      ),
      body: const Column(
        children: [
          SizedBox(height: 20,),
          Center(
            child: CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage('images/alamsyah.png'),
            ),
          )
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(icon)
              Text('beranda')
            ],

          )
        ],
      ),
    );
  }
  
}