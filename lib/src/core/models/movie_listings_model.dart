import 'date_model.dart';
import 'movie_model.dart';
/// Bu model film verilerini çekerken kullanacağımız model
class MovieListingsModel {
  final Dates? dates;
  final int? page;
  final List<MovieModel>? results;
  final int? totalPages;
  final int? totalResults;

  MovieListingsModel({
    this.page,
    this.dates,
    this.results,
    this.totalPages,
    this.totalResults,
  });

  factory MovieListingsModel.fromJson(Map<String, dynamic> json) {
    return MovieListingsModel(
      dates: Dates.fromJson(json["dates"] as Map<String, dynamic>),
      page: json["page"] as int?,
      results: (json["results"] as List<dynamic>)
          .map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: json["total_pages"] as int?,
      totalResults: json["total_results"] as int?,
    );
  }
}
