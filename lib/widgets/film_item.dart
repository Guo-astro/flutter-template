import 'package:flutter/material.dart';
import 'package:init_flutter/models/film.dart';
import 'package:provider/provider.dart';

class FilmItem extends StatelessWidget {
  final int id;

  const FilmItem(this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var films = Provider.of<FilmsModel>(context);
    var film = films.getById(id);
    var filmNameStyle = Theme.of(context).textTheme.titleMedium;
    var filmNumberStyle = TextStyle(
        color: film.iconColor, fontWeight: FontWeight.bold, fontSize: 18.0);
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListTile(
          title: Text(film.name, style: filmNameStyle),
          leading: CircleAvatar(
              backgroundColor: film.backgroundColor,
              child: Text(film.episodeId.toString(), style: filmNumberStyle)),
        ));
  }
}
