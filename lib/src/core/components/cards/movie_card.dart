import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mooovies/src/core/components/button/favorite_button.dart';
import 'package:mooovies/src/core/components/image/base_network_image.dart';
import 'package:mooovies/src/core/constants/app_constants.dart';
import 'package:mooovies/src/core/models/movie_model.dart';
import 'package:mooovies/src/core/theme/app_colors.dart';

//import 'package:mooovies/src/views/navigation_bar.dart';

/// Burada bir StatelessWidget olacak.
/// Bu Widget içerisine bir MovieModel alacak.
/// Bu Movie modelin içindeki verileri kullanarak filmin posterini, ismini, ve imdb(vote) puanını göstereceği bir widget yapacağız
///
///
///
///
///
///
///

/*
const Image(
            image: AssetImage('design/harry-potter.webp'),
            image: NetworkImage(
                'https://m.media-amazon.com/images/I/81q77Q39nEL._AC_UF1000,1000_QL80_.jpg'),
            
*/

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
            url: AppConstants.originalImage(movie?.posterPath) ?? '',
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(1),
                  child: FavoriteButton(),
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
