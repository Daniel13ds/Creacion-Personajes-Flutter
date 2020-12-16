import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gestionProductos/models/mock.dart';
import 'package:gestionProductos/models/myDrawer.dart';
import 'package:gestionProductos/models/rainbow.dart';
import 'package:gestionProductos/pages/characterInfo.dart';

class CharacterList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Lista de Personajes'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: CHARACTER.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              CharacterInfo(CHARACTER[index])));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, left: 50),
                          child: Text(CHARACTER[index].name),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8, bottom: 8, right: 50),
                          child: Text(CHARACTER[index].type),
                        ),
                      ],
                    ));
              },
              separatorBuilder: (context, index) {
                return Rainbow();
              },
            ),
          ),
        ],
      ),
    );
  }
}
