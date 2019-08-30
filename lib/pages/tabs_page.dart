import 'package:flutter/material.dart';

import './classes_page.dart';
import './favorites_page.dart';
import '../widgets/main_drawer.dart';

class TabsPage extends StatefulWidget {
  final favoriteAnimals;

  const TabsPage(this.favoriteAnimals);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int _currentIndex = 0;
  List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [ClassesPage(), FavoritesPage(widget.favoriteAnimals)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Animais em Extinção'),
      ),
      drawer: MainDrawer(),
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        selectedItemColor: Theme.of(context).accentColor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            title: Text('Explorar'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favoritos'),
          ),
        ],
      ),
    );
  }
}
