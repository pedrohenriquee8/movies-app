import 'package:movies_app/core/domain/models/model.dart';
import 'package:movies_app/core/domain/models/movies/movie.dart';

class MovieResponse extends Model {
  late final int _page;
  late final List<Movie> _results;
  late final int _totalResults;
  late final int _totalPages;

  MovieResponse() : super() {
    _page = _totalResults = _totalPages = 0;
    _results = [];
  }

  MovieResponse.fromJSON(Map<String, dynamic> json) {
    _page = json['page'];
    _results = (json['results'] as List).map((e) => Movie.fromJSON(e)).toList();
    _totalResults = json['total_results'];
    _totalPages = json['total_pages'];
  }

  int get page => _page;
  List<Movie> get results => _results;
  int get totalResults => _totalResults;
  int get totalPages => _totalPages;
}
