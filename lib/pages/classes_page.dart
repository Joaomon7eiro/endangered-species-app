import 'package:flutter/material.dart';

import '../widgets/specie_item.dart';
import '../DUMMY_DATA.dart';

class ClassesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20),
              width: MediaQuery.of(context).size.width * 0.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Conheça os Animais',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Text(
                    'que estão em extinção',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40),
              width: 500,
              height: 600,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300, crossAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return SpecieItem(DUMMY_SPECIES[index]);
                },
                itemCount: DUMMY_SPECIES.length,
                physics: NeverScrollableScrollPhysics(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
