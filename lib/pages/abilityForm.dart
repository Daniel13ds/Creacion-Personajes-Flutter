import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestionProductos/models/ability.dart';
import 'package:gestionProductos/models/mock.dart';
import 'package:gestionProductos/models/myDrawer.dart';

class AbilityForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AbilityFormState();
  }
}

String tipo = '';

class _AbilityFormState extends State<AbilityForm> {
  var _form = GlobalKey<FormState>();
  var ability = Ability();

  String _validateName(String value) {
    if (value.isEmpty) {
      return 'El nombre de la habilidad es obligatorio.';
    }
  }

  String _validateType(String value) {
    if (value == null) {
      return 'El tipo de la habilidad es obligatorio';
    }
  }

  String _validatePower(String value) {
    if (tipo == '') {
      return 'Las habilidades necesitan tipo';
    } else if (tipo == 'Estado' && value.isNotEmpty) {
      return 'Las habilidades de estado no tienen poder';
    } else if (tipo == 'Ataque' && value.isEmpty) {
      return 'Las habilidades de ataque necesitan poder';
    } else if (value.isNotEmpty && int.tryParse(value) < 0) {
      return 'Las habilidades no tienen poder negativo';
    } else if (value.isNotEmpty && int.tryParse(value) == 0) {
      return 'Las habilidades de ataque necesitan poder';
    }
  }

  String _validateAccuracy(String value) {
    if (tipo == '') {
      return 'Las habilidades necesitan tipo';
    } else if (value.isEmpty) {
      return 'Las habilidades necesitan precisión';
    } else if (int.tryParse(value) < 0) {
      return 'Las habilidades no tienen precisión negativa';
    } else if (int.tryParse(value) > 100) {
      return 'Las habilidades no tienen mas de 100 de precisión';
    } else if (int.tryParse(value) == 0) {
      return 'Las habilidades necesitan precisión';
    }
  }

  void _saveForm() {
    if (_form.currentState.validate()) {
      _form.currentState.save();
      setState(() {
        ABILITY.add(ability);
        ABILNAMES.add(ability.getName);
        ability = Ability();
      });
      _form.currentState.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          title: Text('Crear Habilidad'),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _form,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    initialValue: ability.name,
                    decoration: InputDecoration(
                        hintText: 'Nombre de la Habilidad',
                        contentPadding: EdgeInsets.all(5),
                        fillColor: Colors.grey[500],
                        border: InputBorder.none,
                        filled: true),
                    validator: _validateName,
                    onSaved: (value) => ability.name = value,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(
                          hintText: 'Descripción de la habilidad',
                          contentPadding: EdgeInsets.all(5),
                          fillColor: Colors.grey[500],
                          border: InputBorder.none,
                          filled: true),
                      onSaved: (value) => ability.description = value,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: DropdownButtonFormField(
                      items: ABITYPE.map((String a) {
                        return DropdownMenuItem(
                          value: a,
                          child: Text(a),
                        );
                      }).toList(),
                      onChanged: (_) {
                        tipo = _;
                      },
                      hint: Text('Selecciona el tipo de la habilidad'),
                      validator: _validateType,
                      onSaved: (value) => ability.type = value,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration:
                            InputDecoration(hintText: 'Poder de la habilidad'),
                        validator: _validatePower,
                        onSaved: (value) =>
                            ability.power = int.tryParse(value)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'Precisión de la habilidad'),
                        validator: _validateAccuracy,
                        onSaved: (value) =>
                            ability.accuracy = int.tryParse(value)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: RaisedButton(
                        child: Text(
                          'Guardar',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: _saveForm),
                  ),
                  Text('Total habilidades: ${ABILITY.length}'),
                ],
              ),
            ),
          ),
        ));
  }
}
