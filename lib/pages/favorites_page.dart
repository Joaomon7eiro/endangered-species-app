import 'package:animal_red_list_app/models/animal.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../widgets/animal_item.dart';

class FavoritesPage extends StatelessWidget {
  final List<Animal> animals;

  const FavoritesPage(this.animals);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Favoritos',
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          animals.isEmpty
              ? Text('Nenhum favorito adicionado')
              : CarouselSlider(
                  height: 400.0,
                  enableInfiniteScroll: false,
                  items: animals.map((animal) {
                    return Builder(
                      builder: (BuildContext context) {
                        return AnimalItem(animal);
                      },
                    );
                  }).toList(),
                ),
        ],
      ),
    );
  }
}
