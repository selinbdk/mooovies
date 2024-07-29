class AppConstants {
  static const String baseUrl = 'api.themoviedb.org';

  static const String tmdbToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ZmFkZDliNzY5NTU2ZjQ1NWRjYmE2NGZlYzU2NmYxOCIsInN1YiI6IjY0MWQ5NGYyMzQ0YThlMDBiYTNjMDBiNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.nofxbbCpeqzAJ_XCXwgvzKZrO_KQqgYIErKx8T-HvLc';

  static const nowPlayingMoviePath =
      '/3/movie/now_playing';
      //?include_adult=false&language=en-US

  static String? originalImage(String? posterPath) => posterPath != null
      ? 'https://image.tmdb.org/t/p/original$posterPath'
      : null;

  static const popularMoviePath =
      "/3/movie/top_rated";
      //?include_adult=false&language=tr-TR

  static const searchPath = "/3/search/movie";
}
