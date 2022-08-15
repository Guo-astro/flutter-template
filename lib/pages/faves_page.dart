import 'package:flutter/material.dart';

import '../widgets/film_item.dart';

class FavesPage extends StatelessWidget {
  const FavesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var favesCount = 0;

    if (favesCount == 0) {
      var style = Theme.of(context).textTheme.titleLarge;
      return Center(
        child: Text(
          'Faves',
          style: style,
        ),
      );
    }

    return Column(
      children: <Widget>[
        _FavesSize(),
        const Divider(height: 4, color: Colors.black),
        Expanded(
          child: ListView.builder(
              itemCount: favesCount,
              itemBuilder: (BuildContext context, int position) {
                return FilmItem(position);
              }),
        ),
      ],
    );
  }
}

class _FavesSize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var textStyle =
    Theme.of(context).textTheme.bodyText1?.copyWith(color: Colors.white);

    return Container(
      color: Theme.of(context).colorScheme.secondary,
      child: SizedBox(
        height: 40,
        child: Center(child: Text('Faves Size', style: textStyle)),
      ),
    );
  }
}
