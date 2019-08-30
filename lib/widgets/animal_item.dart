import 'package:animal_red_list_app/models/animal.dart';
import 'package:animal_red_list_app/pages/animal_details_page.dart';
import 'package:flutter/material.dart';

class AnimalItem extends StatelessWidget {
  final Animal animal;

  const AnimalItem(this.animal);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AnimalDetailsPage.routeName,
            arguments: animal);
      },
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: animal.color,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Hero(
              tag: animal.imageUrl,
              child: Image.network(
                animal.imageUrl,
                width: 290,
                height: 400,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: <Widget>[
                Text(
                  animal.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 26),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  animal.scientificName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
