import 'package:uuid/uuid.dart';

class Ability {
  String id;
  String name;
  String description;
  String type;
  int power;
  int accuracy;

  Ability({this.name, this.description, this.type, this.power, this.accuracy}) {
    this.id = Uuid().v1();
  }

  get getName {
    return this.name.toString();
  }
}
