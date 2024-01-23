import 'package:movies_app/core/domain/models/model.dart';

class ProductionCountry extends Model {
  late final String _iso31661;
  late final String _name;

  ProductionCountry() : super() {
    _iso31661 = _name = "";
  }

  ProductionCountry.fromJSON(Map<String, dynamic> json) {
    _iso31661 = json["iso_3166_1"];
    _name = json["name"];
  }

  String get iso31661 => _iso31661;
  String get name => _name;
}
