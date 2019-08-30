import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import '../DUMMY_DATA.dart';
import '../models/animal.dart';
import '../widgets/animal_item.dart';

class AnimalsPage extends StatefulWidget {
  static const String routeName = '/animals';

  @override
  _AnimalsPageState createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {
  List<Animal> animals = DUMMY_ANIMALS;
  String specieId;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    specieId = ModalRoute.of(context).settings.arguments;
    setState(() {
      animals =
          DUMMY_ANIMALS.where((animal) => animal.specie == specieId).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(specieId),
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              specieId,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            CarouselSlider(
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
      ),
    );
  }
}
