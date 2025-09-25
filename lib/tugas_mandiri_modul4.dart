//1.class abstrak
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

abstract class ListItem {
  Widget builditem(BuildContext context);
}

//2.Heading item
class HeadingItem extends ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget builditem(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Text(
        heading,
        style: const TextStyle(
          color: Colors.pinkAccent,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

//3.Messageitem
class MessageItem extends ListItem {
  final String sender;
  final String body;
  MessageItem(this.sender, this.body);

  @override
  Widget builditem(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.message, color: Colors.pinkAccent),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    sender,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
              )
          ],
        ),
      ),
    );
  }
}

//4.ImageItem
class ImageItem extends ListItem{
  final String title;
  // ignore: non_constant_identifier_names
  final String ImagePath;
  ImageItem(this.title, this.ImagePath);

  @override
  Widget builditem(BuildContext context){
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              )
            )
          ),
          //gambar full lebar
          Image.asset(
            ImagePath,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

//widget uutama
class LayuotlistItem extends StatelessWidget {
  const LayuotlistItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = List<ListItem>.generate(
      30,
      (i) {
        if (i % 5 == 0){
          return HeadingItem('heading $i');
        } else if (i % 3 == 0){
          final images = [
            'images/fto1.jpg',
            'images/fto2.jpg',
            'images/fto3.jpg',
          ];
          return ImageItem('image item $i', images[(i ~/ 3) % images.length]);
        } else {
          return MessageItem('Sender $i', 'Message body $i');
        }
      }
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("List dengan berbagai item"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index){
          return items[index].builditem(context);
        }
      ),
    );
  }
}
