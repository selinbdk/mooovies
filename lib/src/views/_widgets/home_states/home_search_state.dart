import 'package:flutter/material.dart';
import 'package:mooovies/src/core/components/cards/movie_card.dart';
import 'package:mooovies/src/core/models/movie_model.dart';

class HomeSearchState extends StatefulWidget {
  const HomeSearchState({super.key, required this.movieSearchingList});
  final List<MovieModel>? movieSearchingList;

  @override
  State<HomeSearchState> createState() => _HomeSearchStateState();
}

class _HomeSearchStateState extends State<HomeSearchState> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (widget.movieSearchingList?.isEmpty ?? true) {
          return const Center(
            child: Text(
              "The movie you were looking for was not found",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        }
        return GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 20,
            childAspectRatio: 2 / 3,
          ),
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          itemCount: widget.movieSearchingList?.length ?? 0,
          itemBuilder: (context, index) =>
              MovieCard(movie: widget.movieSearchingList![index]),
        );
      },
    );
  }
}
