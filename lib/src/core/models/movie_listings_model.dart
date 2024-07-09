import 'movie_model.dart';

/// Bu model film verilerini çekerken kullanacağımız model
class MovieListingsModel {
  final int? page;
  final List<MovieModel>? results;
  final int? totalPages;
  final int? totalResults;

  MovieListingsModel({
    this.page,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MovieListingsModel.fromJson(Map<String, dynamic> json) {
    return MovieListingsModel(
      page: json["page"] as int?,
      results: (json["results"] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json["total_pages"] as int?,
      totalResults: json["total_results"] as int?,
    );
  }
}
