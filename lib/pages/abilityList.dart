import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestionProductos/models/mock.dart';
import 'package:gestionProductos/models/myDrawer.dart';
import 'package:gestionProductos/models/rainbow.dart';
import 'package:gestionProductos/pages/abilityInfo.dart';

class AbilityList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('Lista de Habilidades'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: ABILITY.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AbilityInfo(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, bottom: 8, left: 50),
                        child: Text(ABILITY[index].name),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 8, bottom: 8, right: 50),
                        child: Text(ABILITY[index].type),
                      ),
                    ],
                  ),
                );
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
