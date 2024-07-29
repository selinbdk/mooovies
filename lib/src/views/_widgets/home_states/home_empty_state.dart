import 'package:flutter/material.dart';
import 'package:mooovies/src/views/home_view.dart';
import 'package:mooovies/src/core/components/cards/movie_card.dart';
import 'package:mooovies/src/core/models/movie_model.dart';
//import 'package:mooovies/src/core/repository/repository.dart';
//import 'package:mooovies/src/core/theme/app_colors.dart';
//import 'package:mooovies/src/views/_widgets/home_search_field.dart';

class HomeEmptyState extends StatelessWidget {
  const HomeEmptyState({super.key,required this.movies,required this.popularMovies});

  final List<MovieModel>? movies;
  final List<MovieModel>?popularMovies;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //* Popular Movies
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: HomeHeader(title: 'Popular Movies'),
        ),
        Expanded(
          child: ListView.separated(
            addAutomaticKeepAlives: true,
            scrollDirection: Axis.horizontal,
            itemCount: popularMovies?.length ?? 0,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            itemBuilder: (context, index) =>
                MovieCard(movie: popularMovies?[index]),
            separatorBuilder: (_, __) => const SizedBox(width: 20),
          ),
        ),

        const Divider(),

        //* Now Playing Movies
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: HomeHeader(title: 'Now Playing Movies'),
        ),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: movies?.length ?? 0,
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            itemBuilder: (context, index) => MovieCard(movie: movies?[index]),
            separatorBuilder: (_, __) {
              return const SizedBox(width: 20);
            },
          ),
        ),
      ],
    );
  }
}
