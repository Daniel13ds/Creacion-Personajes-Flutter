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

  get getName {
    return this.name.toString();
  }

  get getDescription {
    if (this.description == null)
      return 'Sin información';
    else
      return this.description.toString();
  }

  get getAbil1 {
    if (this.abil1 == null)
      return 'Sin habilidad';
    else
      return this.abil1.toString();
  }

  get getAbil2 {
    if (this.abil2 == null)
      return 'Sin habilidad';
    else
      return this.abil2.toString();
  }

  get getAbil3 {
    if (this.abil3 == null)
      return 'Sin habilidad';
    else
      return this.abil3.toString();
  }

  get getAbil4 {
    if (this.abil4 == null)
      return 'Sin habilidad';
    else
      return this.abil4.toString();
  }
}
