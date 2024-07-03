//* fu-stl

//* fu-stf
//*
import 'package:flutter/material.dart';
import 'package:mooovies/src/core/components/cards/movie_card.dart';
//import 'package:mooovies/src/core/components/cards/movie_card.dart';
import 'package:mooovies/src/core/theme/app_colors.dart';
import 'package:mooovies/src/views/_widgets/home_search_field.dart';
//import 'package:mooovies/src/views/favorite_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backColor,
      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.topbar,
        title: const Row(
          children: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
            SizedBox(width: 18),
            //* textformfield
            //* textfield
            Expanded(child: HomeTextField()),
          ],
        ),
      ),
      body: Column(children: [
        Container(
          color: AppColors.secondaryColor,
          width: 800,
          height: 50,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
            child: Text(
              "POPULAR MOVIES",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.text,
              ),
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return const MovieCard();
            },
          ),
        ),
        Container(
          color: AppColors.secondaryColor,
          width: 800,
          height: 50,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4, vertical: 6),
            child: Text(
              "NOW PLAYING",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: AppColors.text,
              ),
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
            ),
            itemCount: 6,
            itemBuilder: (context, index) {
              return const MovieCard();
            },
          ),
        ),
      ]),

// Column => text , gridview, text gridview
    );
  }
}

  