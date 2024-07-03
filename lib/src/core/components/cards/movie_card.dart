import 'package:flutter/material.dart';

//import 'package:mooovies/src/views/navigation_bar.dart';

/**
 * Burada bir StatelessWidget olacak.
 * Bu Widget içerisine bir MovieModel alacak.
 * Bu Movie modelin içindeki verileri kullanarak filmin posterini, ismini, ve imdb(vote) puanını göstereceği bir widget yapacağız
 * 
 * 
 *          
 * 
 * 
 * 
 *
 */

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
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.favorite,
              size: 50,
            ),
          ],
        ),
        Expanded(
          child: Container(
            height: 600,
            padding: const EdgeInsets.only(bottom: 40),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(400),
                image: const DecorationImage(
                  image: AssetImage('design/harry-potter.webp'),
                  fit: BoxFit.contain,
                )),
          ),
        ),
        const Text(
          "Harry Potter",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
