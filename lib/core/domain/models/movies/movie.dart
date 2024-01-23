import 'package:movies_app/core/domain/models/model.dart';

class Movie extends Model {
  late final bool _adult;
  late final String _backdropPath;
  late final List<int> _genreIds;
  late final int _id;
  late final String _originalLanguage;
  late final String _originalTitle;
  late final String _overview;
  late final double _popularity;
  late final String _posterPath;
  late final String _releaseDate;
  late final String _title;
  late final bool _video;
  late final double _voteAverage;
  late final int _voteCount;

  Movie() : super() {
    _id = _voteCount = 0;
    _adult = _video = false;
    _backdropPath = _originalLanguage =
        _originalTitle = _overview = _posterPath = _releaseDate = _title = "";
    _popularity = _voteAverage = 0.0;
    _genreIds = [];
  }

  Movie.fromJSON(Map<String, dynamic> json) {
    _adult = json['adult'];
    _backdropPath = json['backdrop_path'];
    _genreIds = json['genre_ids'].cast<int>();
    _id = json['id'];
    _originalLanguage = json['original_language'];
    _originalTitle = json['original_title'];
    _overview = json['overview'];
    _popularity = json['popularity'];
    _posterPath = json['poster_path'];
    _releaseDate = json['release_date'];
    _title = json['title'];
    _video = json['video'];
    _voteAverage = json['vote_average'];
    _voteCount = json['vote_count'];
  }

  bool get adult => _adult;
  String get backdropPath => _backdropPath;
  List<int> get genreIds => _genreIds;
  int get id => _id;
  String get originalLanguage => _originalLanguage;
  String get originalTitle => _originalTitle;
  String get overview => _overview;
  double get popularity => _popularity;
  String get posterPath => _posterPath;
  String get releaseDate => _releaseDate;
  String get title => _title;
  bool get video => _video;
  double get voteAverage => _voteAverage;
  int get voteCount => _voteCount;
}
