//food item
import 'package:flutter/material.dart';

class Food extends ChangeNotifier {
  final String name; //cheese burger
  final String description; //a burger full of cheese
  final String imagePath; //4.99
  final double price; //burger
  final FoodCategory category; //[extra cheese, sauce, extra patty]
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category,
    required this.availableAddons,
  });
}

//food categories
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

//food addons
class Addon {
  String name;
  double price;

  Addon({
    required this.name,
    required this.price,
  });
}
