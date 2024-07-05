class MovieModel {
  final bool? adult;
  final String? backdropPath;
  final List<int>? genres;
  final int? id;
  final String? originalLanguage;
  final String? originalTitle;
  final String? overview;
  final double? popularity;
  final String? posterPath;
  final String? releaseDate;
  final String? title;
  final bool? video;
  final double? voteAverage;
  final int? voteCount;

  //* nameless constructor
  const MovieModel({
    this.adult,
    this.backdropPath,
    this.genres,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
      adult: json["adult"] as bool?,
      backdropPath: json["backdrop_path"] as String?,
      genres:
          (json["genre_ids"] as List<dynamic>).map((e) => e as int).toList(),
      id: json['id'] as int?,
      originalLanguage: json["original_language"] as String?,
      originalTitle: json["original_title"] as String?,
      overview: json["overview"] as String?,
      popularity: json["popularity"] as double?,
      posterPath: json["poster_path"] as String?,
      releaseDate: json["release_date"] as String?,
      title: json['title'] as String?,
      video: json["video"] as bool?,
      voteAverage: json["vote_average"] as double?,
      voteCount: json['vote_count'] as int?,
    );
  }
}
