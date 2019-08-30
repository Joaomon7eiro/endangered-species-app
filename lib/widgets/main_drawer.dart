import 'package:flutter/material.dart';

import '../pages/about_page.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            color: Theme.of(context).accentColor,
            height: 200,
            width: double.infinity,
            child: Center(
              child: Text(
                'Animais em Extinção',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Início'),
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Sobre'),
            onTap: () {
              Navigator.pushReplacementNamed(context, AboutPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
