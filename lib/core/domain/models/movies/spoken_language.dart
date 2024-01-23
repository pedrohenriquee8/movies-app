import 'package:movies_app/core/domain/models/model.dart';

class SpokenLanguage extends Model {
  late final String _englishName;
  late final String _iso6391;
  late final String _name;

  SpokenLanguage() : super() {
    _englishName = _iso6391 = _name = "";
  }

  SpokenLanguage.fromJSON(Map<String, dynamic> json) {
    _englishName = json["english_name"];
    _iso6391 = json["iso_639_1"];
    _name = json["name"];
  }

  String get englishName => _englishName;
  String get iso6391 => _iso6391;
  String get name => _name;
}
