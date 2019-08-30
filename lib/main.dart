import 'package:flutter/material.dart';

import './pages/tabs_page.dart';
import './pages/animals_page.dart';
import './pages/animal_details_page.dart';
import './pages/about_page.dart';
import './models/animal.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Animal> _favoriteAnimals = [];

  void _handleFavorite(Animal animal) {
    setState(() {
      if (_favoriteAnimals.contains(animal)) {
        _favoriteAnimals.remove(animal);
      } else {
        _favoriteAnimals.add(animal);
      }
    });
  }

  bool _isFavorite(Animal animal) {
    return _favoriteAnimals.contains(animal);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'animal app',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.teal,
      ),
      routes: {
        '/': (context) => TabsPage(_favoriteAnimals),
        AnimalsPage.routeName: (context) => AnimalsPage(),
        AnimalDetailsPage.routeName: (context) =>
            AnimalDetailsPage(_handleFavorite, _isFavorite),
        AboutPage.routeName: (context) => AboutPage(),
      },
    );
  }
}
