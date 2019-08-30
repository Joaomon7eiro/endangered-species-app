import 'package:animal_red_list_app/models/animal.dart';
import 'package:flutter/material.dart';

class AnimalDetailsPage extends StatelessWidget {
  static const String routeName = '/animals-details';

  final Function handleFavorite;
  final Function isFavorite;

  const AnimalDetailsPage(this.handleFavorite, this.isFavorite);

  @override
  Widget build(BuildContext context) {
    Animal animal = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250,
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 40),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                    color: animal.color,
                  ),
                ),
              ),
              Positioned(
                bottom: 1,
                left: 0,
                right: 0,
                child: Hero(
                  tag: animal.imageUrl,
                  child: Image.network(
                    animal.imageUrl,
                    width: 200,
                    height: 200,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 10,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () => Navigator.pop(context),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.only(left: 40, right: 40, bottom: 65),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          animal.specie,
                          style: TextStyle(color: Colors.black54, fontSize: 16),
                        ),
                        Text(
                          animal.name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 35),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Resumo',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          animal.summary,
                          style: TextStyle(color: Colors.black54, fontSize: 16),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Nome Cientifico',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15),
                            ),
                            Text(
                              animal.scientificName,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Comprimento',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15),
                            ),
                            Text(
                              animal.length,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Status',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15),
                            ),
                            Text(
                              animal.status,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Extimativa de vida',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 15),
                            ),
                            Text(
                              animal.life,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: isFavorite(animal)
            ? Icon(Icons.favorite)
            : Icon(Icons.favorite_border),
        onPressed: () {
          handleFavorite(animal);
        },
      ),
    );
  }
}
