import 'package:flutter/material.dart';

class TugasMandiri extends StatelessWidget {
  const TugasMandiri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('List dan GridView')),
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Menu Aplikasi:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const ListTile(leading: Icon(Icons.map), title: Text('Map')),
          const ListTile(
              leading: Icon(Icons.photo_album), title: Text('Album')),
          const ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text('Warna Horizontal:',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SizedBox(
            height: 150,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 160,
                  color: Colors.red,
                ),
                Container(
                  width: 160,
                  color: Colors.blue,
                ),
                Container(
                  width: 160,
                  color: Colors.green,
                ),
                Container(
                  width: 160,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text(
              'Grid item:',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(20, (index) {
                return Center(
                  child: Text(
                    'Item $index',
                    style: const TextStyle(fontSize: 20),
                  ),
                );
              }))
        ],
      ),
    );
  }
}
