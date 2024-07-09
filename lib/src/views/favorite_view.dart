import 'package:flutter/material.dart';
import 'package:mooovies/src/core/components/cards/movie_card.dart';
import 'package:mooovies/src/core/repository/favorite_movie_provider.dart';
import 'package:mooovies/src/core/theme/app_colors.dart';
import 'package:provider/provider.dart';

class FavoriteView extends StatefulWidget {
  const FavoriteView({super.key});

  @override
  State<FavoriteView> createState() => _FavoriteViewState();
}

class _FavoriteViewState extends State<FavoriteView> {
  @override
  Widget build(BuildContext context) {
    print('bura calısmaz');
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.topbar,
        title: const Center(
          child: Text(
            "YOUR FAVORITE MOVIES",
            style: TextStyle(
              color: AppColors.text,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),

      //body: const CountText(),
      body: Consumer<FavoriteMovieProvider>(
        builder: (context, provider, child) {
          print('FAVORI REBUILD');

          if (provider.count == 0) {
            return const Center(
              child: Text(
                "THERE ARE NO MOVIES IN THE LIST",
                style: TextStyle(
                  color: AppColors.text,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            );
          }

          return GridView.builder(
            itemCount: provider.favs.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 2 / 3,
            ),
            itemBuilder: (context, index) {
              return MovieCard(
                movie: provider.favs[index],
              );
            },
          );
        },
      ),
    );
  }
}

class CountText extends StatelessWidget {
  const CountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(context.watch<FavoriteMovieProvider>().count.toString()));
  }
}
