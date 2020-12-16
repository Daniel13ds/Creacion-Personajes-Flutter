import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestionProductos/models/myDrawer.dart';

import '../models/character.dart';
import '../models/ability.dart';
import '../models/mock.dart';
import 'characterList.dart';

class CharacterForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CharacterFormState();
  }
}

class _CharacterFormState extends State<CharacterForm> {
  var _form = GlobalKey<FormState>();
  var character = Character();

  String _validateName(String value) {
    if (value.isEmpty) {
      return 'El nombre del personaje es obligatorio.';
    }
  }

  String _validateType(String value) {
    if (value == null) {
      return 'El tipo del personaje es obligatorio';
    }
  }

  void _saveForm() {
    if (_form.currentState.validate()) {
      _form.currentState.save();
      setState(() {
        CHARACTER.add(character);
        character = Character();
      });
      _form.currentState.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Crear Personaje'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _form,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  initialValue: character.name,
                  decoration: InputDecoration(
                      hintText: 'Nombre del personaje',
                      contentPadding: EdgeInsets.all(5),
                      fillColor: Colors.grey[500],
                      border: InputBorder.none,
                      filled: true),
                  validator: _validateName,
                  onSaved: (value) => character.name = value,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                        hintText: 'Descripción del personaje',
                        contentPadding: EdgeInsets.all(5),
                        fillColor: Colors.grey[500],
                        border: InputBorder.none,
                        filled: true),
                    onSaved: (value) => character.description = value,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: DropdownButtonFormField(
                    items: CHARTYPE.map((String a) {
                      return DropdownMenuItem(
                        value: a,
                        child: Text(a),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    hint: Text('Selecciona el tipo del personaje'),
                    validator: _validateType,
                    onSaved: (value) => character.type = value,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: DropdownButtonFormField(
                    items: ABILNAMES.map((String a) {
                      return DropdownMenuItem(
                        value: a,
                        child: Text(a),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    hint: Text('Selecciona una habilidad'),
                    onSaved: (value) => character.abil1 = value,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: DropdownButtonFormField(
                    items: ABILNAMES.map((String a) {
                      return DropdownMenuItem(
                        value: a,
                        child: Text(a),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    hint: Text('Selecciona una habilidad'),
                    onSaved: (value) => character.abil2 = value,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: DropdownButtonFormField(
                    items: ABILNAMES.map((String a) {
                      return DropdownMenuItem(
                        value: a,
                        child: Text(a),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    hint: Text('Selecciona una habilidad'),
                    onSaved: (value) => character.abil3 = value,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: DropdownButtonFormField(
                    items: ABILNAMES.map((String a) {
                      return DropdownMenuItem(
                        value: a,
                        child: Text(a),
                      );
                    }).toList(),
                    onChanged: (_) {},
                    hint: Text('Selecciona una habilidad'),
                    onSaved: (value) => character.abil4 = value,
                  ),
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
                Text('Total personajes: ${CHARACTER.length}'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
