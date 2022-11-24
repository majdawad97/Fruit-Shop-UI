import 'package:flutter/animation.dart';

class Fruit {
  final String name;
  final String imagePath;
  final double price;
  final int color;

  const Fruit({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.color,
  });
}

const List<Fruit> fruitList = [
  Fruit(
    name: 'Apple Fruit',
    imagePath: 'images/apple.png',
    price: 5.60,
    color: 0xFFFCF1F1,
  ),
  Fruit(
    name: 'Lemon Fruit',
    imagePath: 'images/lemon.png',
    price: 3.10,
    color: 0xFFFEFAE7,
  ),
  Fruit(
    name: 'Avocado Fruit',
    imagePath: 'images/avocado.png',
    price: 8.99,
    color: 0xFFF3F6F0,
  ),
  Fruit(
    name: 'Grape Fruit',
    imagePath: 'images/grape.png',
    price: 6.20,
    color: 0xFFF4F1F6,
  ),
];
