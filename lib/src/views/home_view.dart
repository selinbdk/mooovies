//* fu-stl

// ignore_for_file: avoid_print

//* fu-stf
//*
import 'package:flutter/material.dart';
import 'package:mooovies/src/core/models/movie_model.dart';
import 'package:mooovies/src/core/repository/repository.dart';
import 'package:mooovies/src/core/theme/app_colors.dart';
import 'package:mooovies/src/views/_widgets/home_search_field.dart';
import 'package:mooovies/src/views/_widgets/home_states/home_empty_state.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final List<MovieModel>? movies = [];
  final List<MovieModel>? popularMovies = [];
  final List<MovieModel>? movieTitles = [];

  @override
  void initState() {
    print('initState');

    MovieRepository().getNowPlayingMovies().then(
      (movieListingsModel) {
        setState(() {
          movies?.addAll(movieListingsModel.results ?? []);
          print(movies?.length);
        });
      },
    );

    MovieRepository().getPopularMovies().then(
      (movieListingsModel) {
        setState(() {
          popularMovies?.addAll(movieListingsModel.results ?? []);
          print(popularMovies?.length);
        });
      },
    );

    MovieRepository().searchMovies().then(
      (movieListingsModel) {
        setState(() {
          movieTitles?.addAll(movieListingsModel.results ?? []);
        });
      },
    );

    super.initState();
  }

  int movieIndex = 0;

  @override
  Widget build(BuildContext context) {
    print('builded');
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      // appBar: HomeAppBar(hintText:'enes'), |

      appBar: AppBar(
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        backgroundColor: AppColors.topbar,
        title:  Row(
          children: [
            const Icon(
              Icons.search,
              color: Colors.white,
            ),
            const SizedBox(width: 18),
            Expanded(child: HomeTextField(movieTitles: movieTitles,)),
          ],
        ),
      ),

      body: HomeEmptyState(movies: movies,
      popularMovies: popularMovies,
      ),

      // Column(
      //   children: [
      //     //* Popular Movies
      //     const Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 8),
      //       child: HomeHeader(title: 'Popular Movies'),
      //     ),
      //     Expanded(
      //       child: ListView.separated(
      //         addAutomaticKeepAlives: true,
      //         scrollDirection: Axis.horizontal,
      //         itemCount: popularMovies?.length ?? 0,
      //         padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      //         itemBuilder: (context, index) =>
      //             MovieCard(movie: popularMovies?[index]),
      //         separatorBuilder: (_, __) => const SizedBox(width: 20),
      //       ),
      //     ),

      //     const Divider(),

      //     //* Now Playing Movies
      //     const Padding(
      //       padding: EdgeInsets.symmetric(horizontal: 8),
      //       child: HomeHeader(title: 'Now Playing Movies'),
      //     ),
      //     Expanded(
      //       child: ListView.separated(
      //         scrollDirection: Axis.horizontal,
      //         itemCount: movies?.length ?? 0,
      //         padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      //         itemBuilder: (context, index) => MovieCard(movie: movies?[index]),
      //         separatorBuilder: (_, __) {
      //           return const SizedBox(width: 20);
      //         },
      //       ),
      //     ),
      //   ],
      // ),
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
