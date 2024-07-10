import 'package:flutter/material.dart';
import 'package:mooovies/src/core/components/cards/movie_card.dart';
import 'package:mooovies/src/core/models/movie_model.dart';

class HomeSearchState extends StatefulWidget {
  const HomeSearchState(
      {super.key, required this.query, required this.movieTitles});
  final String? query;
  final List<MovieModel>? movieTitles;

  @override
  State<HomeSearchState> createState() => _HomeSearchStateState();
}

class _HomeSearchStateState extends State<HomeSearchState> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 1,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        itemBuilder: (context, index) =>
            MovieCard(movie: widget.movieTitles?[index]),
        separatorBuilder: (_, __) {
          return const SizedBox(width: 20);
        },
      ),
    );
  }
}
