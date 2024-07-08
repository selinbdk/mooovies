import 'package:flutter/material.dart';
import 'package:mooovies/src/core/repository/repository.dart';
import 'package:mooovies/src/core/theme/app_colors.dart';

/// Bu içerisinde kalp iconu bir button olacak bu button movie cardlarının içerisinde olacak sağ üst köşede
///
/// butona tıklanıldığında iligli card favorilere eklenecek
///
///
///
///

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  late bool isFav;

  @override
  void initState() {
    isFav = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final repo = MovieRepository();
        await repo.getNowPlayingMovies();
      },
      icon: const Icon(Icons.favorite),
      color: isFav ? Colors.red : AppColors.initialButton,
      iconSize: 40,
    );
  }
}
