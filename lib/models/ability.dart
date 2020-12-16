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

  get getDescription {
    if (this.description == null)
      return 'Sin información';
    else
      return this.description.toString();
  }

  get getPower {
    if (this.type == 'Estado')
      return 'Sin poder';
    else
      return this.power.toString();
  }

  get getAccuracy {
    return this.accuracy.toString();
  }
}
