import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gestionProductos/models/myDrawer.dart';

class CharacterInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Información del Personaje'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(),
        ),
      ),
    );
  }
}
