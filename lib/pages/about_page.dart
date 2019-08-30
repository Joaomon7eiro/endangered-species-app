import 'package:animal_red_list_app/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  static const String routeName = "/settings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Sobre'),
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Text(
            'Animais em extinção são aqueles ameaçados de desaparecerem da face da Terra. As pesquisas mostram que milhares de animais foram extintos nos últimos cem anos, e um número crescente de espécies de animais correm o risco de serem extintos.',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            textAlign: TextAlign.start,
          ),
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
