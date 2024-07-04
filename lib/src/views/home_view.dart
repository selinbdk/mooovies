//* fu-stl

//* fu-stf
//*
import 'package:flutter/material.dart';
import 'package:mooovies/src/core/components/cards/movie_card.dart';
import 'package:mooovies/src/core/theme/app_colors.dart';
import 'package:mooovies/src/views/_widgets/home_search_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      // appBar: HomeAppBar(hintText:'enes'), |

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
            Expanded(child: HomeTextField()),
          ],
        ),
      ),

      body: Column(
        children: [
          //* Popular Movies
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: HomeHeader(title: 'Popular Movies'),
          ),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              itemBuilder: (context, index) => const MovieCard(),
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
              itemCount: 6,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              itemBuilder: (context, index) {
                return const MovieCard();
              },
              separatorBuilder: (_, __) {
                return const SizedBox(width: 20);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key, this.title = 'qweqwe'});

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 6),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.text,
          ),
        ),
      ),
    );
  }
}
