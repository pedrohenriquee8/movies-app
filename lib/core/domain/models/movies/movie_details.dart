import 'package:movies_app/core/domain/models/model.dart';
import 'package:movies_app/core/domain/models/movies/genre.dart';
import 'package:movies_app/core/domain/models/movies/production/production_company.dart';
import 'package:movies_app/core/domain/models/movies/production/production_country.dart';
import 'package:movies_app/core/domain/models/movies/spoken_language.dart';

class MovieDetails extends Model {
  late final bool _adult;
  late final String _backdropPath;
  late final dynamic _belongsToCollection;
  late final int _budget;
  late final List<Genre> _genres;
  late final String _homepage;
  late final int _id;
  late final String _imdbId;
  late final String _originalLanguage;
  late final String _originalTitle;
  late final String _overview;
  late final double _popularity;
  late final String _posterPath;
  late final List<ProductionCompany> _productionCompanies;
  late final List<ProductionCountry> _productionCountries;
  late final String _releaseDate;
  late final int _revenue;
  late final int _runtime;
  late final List<SpokenLanguage> _spokenLanguages;
  late final String _status;
  late final String _tagline;
  late final String _title;
  late final bool _video;
  late final double _voteAverage;
  late final int _voteCount;

  MovieDetails() : super() {
    _budget = _id = _revenue = _runtime = _voteCount = 0;
    _backdropPath = _homepage = _imdbId = _originalLanguage = _originalTitle =
        _overview =
            _posterPath = _releaseDate = _status = _tagline = _title = "";
    _adult = _video = false;
    _popularity = _voteAverage = 0.0;
    _belongsToCollection = null;
    _genres = [];
    _productionCompanies = [];
    _productionCountries = [];
    _spokenLanguages = [];
  }

  MovieDetails.fromJSON(Map<String, dynamic> json) {
    _adult = json["adult"];
    _backdropPath = json["backdrop_path"];
    _belongsToCollection = json["belongs_to_collection"];
    _budget = json["budget"];
    _genres = (json["genres"] as List).map((e) => Genre.fromJSON(e)).toList();
    _homepage = json["homepage"];
    _id = json["id"];
    _imdbId = json["imdb_id"];
    _originalLanguage = json["original_language"];
    _originalTitle = json["original_title"];
    _overview = json["overview"];
    _popularity = json["popularity"];
    _posterPath = json["poster_path"];
    _productionCompanies = (json["production_companies"] as List)
        .map((e) => ProductionCompany.fromJSON(e))
        .toList();
    _productionCountries = (json["production_countries"] as List)
        .map((e) => ProductionCountry.fromJSON(e))
        .toList();
    _releaseDate = json["release_date"];
    _revenue = json["revenue"];
    _runtime = json["runtime"];
    _spokenLanguages = (json["spoken_languages"] as List)
        .map((e) => SpokenLanguage.fromJSON(e))
        .toList();
    _status = json["status"];
    _tagline = json["tagline"];
    _title = json["title"];
    _video = json["video"];
    _voteAverage = json["vote_average"];
    _voteCount = json["vote_count"];
  }

  bool get adult => _adult;
  String get backdropPath => _backdropPath;
  dynamic get belongsToCollection => _belongsToCollection;
  int get budget => _budget;
  List<Genre> get genres => _genres;
  String get homepage => _homepage;
  int get id => _id;
  String get imdbId => _imdbId;
  String get originalLanguage => _originalLanguage;
  String get originalTitle => _originalTitle;
  String get overview => _overview;
  double get popularity => _popularity;
  String get posterPath => _posterPath;
  List<ProductionCompany> get productionCompanies => _productionCompanies;
  List<ProductionCountry> get productionCountries => _productionCountries;
  String get releaseDate => _releaseDate;
  int get revenue => _revenue;
  int get runtime => _runtime;
  List<SpokenLanguage> get spokenLanguages => _spokenLanguages;
  String get status => _status;
  String get tagline => _tagline;
  String get title => _title;
  bool get video => _video;
  double get voteAverage => _voteAverage;
  int get voteCount => _voteCount;
}
