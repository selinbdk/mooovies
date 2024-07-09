import 'package:flutter/material.dart';
import 'package:mooovies/src/core/models/movie_model.dart';

class FavoriteMovieProvider extends ChangeNotifier {
  final List<MovieModel?> _favs = [];

  int get count => _favs.length;

  List<MovieModel?> get favs => _favs;

  void _addFav(MovieModel? movieModel) {
    _favs.add(movieModel);
    notifyListeners();
  }

  void _removeFav(MovieModel? movieModel) {
    _favs.removeWhere((e) => e == movieModel);
    notifyListeners();
  }

  bool isFav(MovieModel? movieModel) => _favs.contains(movieModel);

  void toggleFav(MovieModel? movieModel) {
    final isExist = isFav(movieModel);

    if (isExist) return _removeFav(movieModel);

    _addFav(movieModel);
  }
}
