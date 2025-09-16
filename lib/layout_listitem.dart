import 'package:flutter/material.dart';

//1. class abstrak
abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
}

//2. headingitem
class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

//3.massageitem
class MessageItem implements ListItem {
  late final String sender;
  late final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}

//widget utama
class LayoutListitem extends StatelessWidget {
  const LayoutListitem({super.key});

  @override
  Widget build(BuildContext context) {
    //4.data contoh
    final List<ListItem> items = List<ListItem>.generate(
      20,
      (i) => i % 6 == 0
          ? HeadingItem('heading $i')
          : MessageItem('sender $i', 'body $i'),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('List Dengan Berbagai Item')),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, Index) {
            final item = items[Index];
            return ListTile(
              title: item.buildSubtitle(context),
              subtitle: item.buildSubtitle(context),
            );
          }),
    );
  }
}
