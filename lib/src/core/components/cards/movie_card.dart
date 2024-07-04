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
    return Stack(
      children: <Widget>[
        Image.asset('design/harry-potter.webp', fit: BoxFit.contain),
        // Align(
        //   alignment: FractionalOffset.bottomCenter,
        //   child: SizedBox(
        //     height: 100,
        //     width: 20,
        //     child: BackdropFilter(
        //       filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        //       child: Container(
        //         color: Colors.black.withOpacity(0),
        //       ),
        //     ),
        //   ),
        // ),
        Positioned.fill(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(225, 0, 0, 270),
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 20),
                          child: Text(
                            "Harry Potter",
                            style: TextStyle(
                              color: AppColors.text,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        SizedBox(width: 50),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30, 0, 0, 20),
                          child: Text(
                            "7.3",
                            style: TextStyle(
                              color: AppColors.text,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),
                        ),
                      ],
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
    );
  }
}
