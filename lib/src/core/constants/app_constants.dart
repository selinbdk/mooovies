class AppConstants {
  static const String baseUrl = 'https://api.themoviedb.org/3/';

  static const String tmdbToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4ZmFkZDliNzY5NTU2ZjQ1NWRjYmE2NGZlYzU2NmYxOCIsInN1YiI6IjY0MWQ5NGYyMzQ0YThlMDBiYTNjMDBiNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.nofxbbCpeqzAJ_XCXwgvzKZrO_KQqgYIErKx8T-HvLc';

  static const nowPlayingMoviePath = 'movie/now_playing';

  static String? originalImage(String? posterPath) =>
      'https://image.tmdb.org/t/p/original$posterPath';
}
