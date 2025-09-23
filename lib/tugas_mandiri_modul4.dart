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
  final String ImagePath;
  ImageItem(this.title, this.ImagePath);

  @override
  Widget builditem(BuildContext context){
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                fontWeight: 
              ),
            ),
          )
        ],
      ),
    )
  }
}