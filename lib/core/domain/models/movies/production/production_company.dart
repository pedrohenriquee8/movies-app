import 'package:movies_app/core/domain/models/model.dart';

class ProductionCompany extends Model {
  late final int _id;
  late final String _logoPath;
  late final String _name;
  late final String _originCountry;

  ProductionCompany() : super() {
    _id = 0;
    _logoPath = _name = _originCountry = "";
  }

  ProductionCompany.fromJSON(Map<String, dynamic> json) {
    _id = json["id"];
    _logoPath = json["logo_path"];
    _name = json["name"];
    _originCountry = json["origin_country"];
  }

  int get id => _id;
  String get logoPath => _logoPath;
  String get name => _name;
  String get originCountry => _originCountry;
}
