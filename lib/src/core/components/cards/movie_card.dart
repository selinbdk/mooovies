import 'package:flutter/material.dart';
import 'package:mooovies/src/views/_widgets/home_search_field.dart';

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

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
            backgroundColor: const Color.fromARGB(189, 0, 0, 0),
            title: const Row(
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                SizedBox(width: 18),
                //* textformfield
                //* textfield
                Expanded(child: HomeTextField()),
                // SizedBox(
                //   height: 20,
                //   width: 100,
                //   child: TextField(),
                // ),
                // Container(
                //   width: 300,
                //   height: 50,
                //   padding: EdgeInsets.all(50),
                //   margin: EdgeInsets.only(top: 50, bottom: 50),
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.only(
                //       bottomLeft: Radius.circular(100),
                //       bottomRight: Radius.circular(100),
                //       topLeft: Radius.circular(100),
                //       topRight: Radius.circular(100),
                //     ),
                //   ),

                //   //child: Text('Search'),

                //   //constraints: BoxConstraints(maxHeight: 200, maxWidth: 100),
                // )
              ],
            )),
        body: Column(
          children: [
            Container(
              color: const Color.fromARGB(189, 0, 0, 0),
              height: 50,
              margin: EdgeInsets.zero,
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        'Movies'),
                  ),
                  SizedBox(width: 100),
                  Padding(
                    padding: EdgeInsets.only(left: 70),
                    child: Text(
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        'Person'),
                  )
                ],
              ),
            ),
            const Card(),
            const Image(
              image: AssetImage('design/harry-potter.webp'),
              // image: NetworkImage(
              //     'https://m.media-amazon.com/images/I/81q77Q39nEL._AC_UF1000,1000_QL80_.jpg'),
            ),
          ],
        ));
  }
}
