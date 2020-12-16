import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/characterForm.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creador de Personajes RPG',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.orange,
          buttonColor: Colors.green),
      home: CharacterForm(),
    );
  }
}
