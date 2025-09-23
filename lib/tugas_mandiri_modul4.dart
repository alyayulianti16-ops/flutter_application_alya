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
  Widget builditem(BuildContext context)
}