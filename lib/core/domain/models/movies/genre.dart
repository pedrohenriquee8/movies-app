import 'package:movies_app/core/domain/models/model.dart';

class Genre extends Model {
  late final int _id;
  late final String _name;

  Genre() : super() {
    _id = 0;
    _name = "";
  }

  Genre.fromJSON(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
  }

  int get id => _id;
  String get name => _name;
}
