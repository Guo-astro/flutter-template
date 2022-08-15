import 'package:flutter/material.dart';

import '../models/film.dart';

class FaveButton extends StatelessWidget {
  final Film film;

  const FaveButton({Key? key, required this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      onPressed: () {},
      child: const Icon(Icons.star_border),
    );
  }
}
