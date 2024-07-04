import 'dart:ui';

import 'package:flutter/material.dart';
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
  const MovieCard({super.key});

  @override
  Widget build(BuildContext context) {
    //* burası sadece movie görsel ve ismini içerecek
    //* Container kullanılsın
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: <Widget>[
          Image.asset(
            'design/harry-potter.webp',
            fit: BoxFit.contain,
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                    child: const SizedBox(
                      height: 60,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Harry Potter",
                              style: TextStyle(
                                color: AppColors.text2,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "7.3",
                                  style: TextStyle(
                                    color: AppColors.text2,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Icon(
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
