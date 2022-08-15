import 'package:flutter/material.dart';
import 'package:init_flutter/models/film.dart';

class FavesModel extends ChangeNotifier {
  final FilmsModel _films;
  final List<int> _episodeIds;

  FavesModel(this._films, FavesModel previous)
      : _episodeIds = previous._episodeIds;

  List<Film> get films => _episodeIds.map((id) => _films.getById(id)).toList();

  Film getByPosition(int position) => films[position];

  void add(Film f) {
    _episodeIds.add(f.episodeId);
    notifyListeners();
  }

  void remove(Film f) {
    _episodeIds.remove(f.episodeId);
    notifyListeners();
  }

  int get length => _episodeIds.length;
}
