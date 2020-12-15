import 'package:uuid/uuid.dart';

class Character {
  String id;
  String name;
  String description;
  String type;
  String abil1;
  String abil2;
  String abil3;
  String abil4;

  Character(
      {this.name,
      this.description,
      this.type,
      this.abil1,
      this.abil2,
      this.abil3,
      this.abil4}) {
    this.id = Uuid().v1();
  }
}
