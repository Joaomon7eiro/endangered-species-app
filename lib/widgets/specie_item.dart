import 'package:animal_red_list_app/models/specie.dart';
import 'package:flutter/material.dart';

import '../pages/animals_page.dart';

class SpecieItem extends StatelessWidget {
  final Specie specie;

  const SpecieItem(this.specie);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        AnimalsPage.routeName,
        arguments: specie.id,
      ),
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 30),
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(
                color: specie.color,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      specie.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 1,
            left: 10,
            child: Image.network(
              specie.imageUrl,
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
