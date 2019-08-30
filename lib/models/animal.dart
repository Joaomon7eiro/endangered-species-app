import 'package:flutter/material.dart';

class Animal {
  final String name;
  final String summary;
  final String specie;
  final String scientificName;
  final String life;
  final String length;
  final String status;
  final String imageUrl;
  final Color color;

  const Animal({
    @required this.name,
    @required this.summary,
    @required this.specie,
    @required this.scientificName,
    @required this.life,
    @required this.length,
    @required this.status,
    @required this.imageUrl,
    @required this.color,
  });
}
