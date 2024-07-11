import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mooovies/src/core/components/button/favorite_button.dart';
import 'package:mooovies/src/core/components/image/base_network_image.dart';
import 'package:mooovies/src/core/constants/app_constants.dart';
import 'package:mooovies/src/core/models/movie_model.dart';
import 'package:mooovies/src/core/repository/favorite_movie_provider.dart';
import 'package:mooovies/src/core/theme/app_colors.dart';
import 'package:provider/provider.dart';

//import 'package:mooovies/src/views/navigation_bar.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movie});

  final MovieModel? movie;

  @override
  Widget build(BuildContext context) {
    //* burası sadece movie görsel ve ismini içerecek
    //* Container kullanılsın

    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: <Widget>[
          BaseNetworkImage(
            url: AppConstants.originalImage(movie?.posterPath),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1),
                  child: Consumer<FavoriteMovieProvider>(
                    builder: (_, provider, ___) {
                      return FavoriteButton(
                        isFav: provider.isFav(movie),
                        onPressed: () {
                          provider.toggleFav(movie);
                        },
                      );
                    },
                  ),
                ),
                ClipRRect(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.black45,
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                      child: SizedBox(
                        height: 70,
                        child: Padding(
                          padding: const EdgeInsets.all(8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Text(
                                    (movie?.title ?? ''),
                                    //* burası sığmıyor
                                    // maxLines: 1,
                                    style: const TextStyle(
                                      color: AppColors.text2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Row(
                                //mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    movie?.voteAverage!.toStringAsFixed(1) ??
                                        '',
                                    //* 2 haneliye çevirlemli

                                    style: const TextStyle(
                                      color: AppColors.text2,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 18,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                /**
               * 
               * 
               */
              ],
            ),
          ),
        ],
      ),
    );
  }
}
