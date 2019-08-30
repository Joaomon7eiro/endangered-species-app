import 'package:flutter/material.dart';

class Specie {
  final String id;
  final String name;
  final String imageUrl;
  final Color color;

  const Specie(
      {@required this.id,
      @required this.name,
      @required this.imageUrl,
      @required this.color});
}
