import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestionProductos/models/mock.dart';
import 'package:gestionProductos/models/myDrawer.dart';

class AbilityInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Información de la Habilidad'),
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
