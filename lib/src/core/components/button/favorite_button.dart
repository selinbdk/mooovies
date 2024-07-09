import 'package:flutter/material.dart';
import 'package:mooovies/src/core/theme/app_colors.dart';

class FavoriteButton extends StatelessWidget {
  const FavoriteButton({
    super.key,
    required this.isFav,
    required this.onPressed,
  });
  final bool isFav;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: const Icon(Icons.favorite),
      color: isFav ? Colors.red : AppColors.initialButton,
      iconSize: 40,
    );
  }
}
