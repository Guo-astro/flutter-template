import 'package:flutter/material.dart';

class FilmItem extends StatelessWidget {
  final int id;

  const FilmItem(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var filmNameStyle = Theme.of(context).textTheme.titleMedium;

    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          title: Text('Film name', style: filmNameStyle),
          leading: const CircleAvatar(
              backgroundColor: Colors.blue, child: Text('#')),
        ));
  }
}
