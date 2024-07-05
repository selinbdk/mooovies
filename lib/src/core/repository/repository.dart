import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:mooovies/src/core/constants/app_constants.dart';
import 'package:mooovies/src/core/models/movie_listings_model.dart';

//**
// Burada API'ye gidip istek atılacak.
// Bize bir JSON veri dönecek.
// Dönen JSON veriyi parse edip dart modellerine çevireceğiz.
// Daha sonrasında bu modelleri UI sayfalarında göstereceğiz.
//
//
//
//
//
//
//? API URL: https://api.themoviedb.org/3
//? API URL: https://api.themoviedb.org/3/popular-movies
//? API TOKEN: eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ZmFkZDliNzY5NTU2ZjQ1NWRjYmE2NGZlYzU2NmYxOCIsInN1YiI6IjY0MWQ5NGYyMzQ0YThlMDBiYTNjMDBiNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.nofxbbCpeqzAJ_XCXwgvzKZrO_KQqgYIErKx8T-HvLc
// */
//* how can i convert my json data to dart classes
class MovieRepository {
  Future<MovieListingsModel> getNowPlayingMovies() async {
    final response = await http.get(
      Uri.parse(AppConstants.baseUrl + AppConstants.nowPlayingMoviePath),
      headers: {
        HttpHeaders.contentTypeHeader: ContentType.json.mimeType,
        HttpHeaders.authorizationHeader: 'Bearer ${AppConstants.tmdbToken}',
      },
    );

    final data = jsonDecode(response.body);

    final movieListingsModel =
        MovieListingsModel.fromJson(data as Map<String, dynamic>);

    return movieListingsModel;
  }
}
