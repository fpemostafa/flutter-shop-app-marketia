import 'package:flutter/material.dart';
import 'package:marketia/constants.dart';

class Category {
  final String name;
  final String icon;
  Color color;

  Category({
    required this.icon,
    required this.name,
    this.color = primaryColor,
  });
}

List<Category> categoriesList = [
  Category(
    icon: "assets/icons/categories/dress.svg",
    name: "Dress",
  ),
  Category(
    icon: "assets/icons/categories/man-bag.svg",
    name: "Man Bag",
  ),
  Category(
    icon: "assets/icons/categories/man-pants.svg",
    name: " Man Pants",
  ),
  Category(
    icon: "assets/icons/categories/man-shoes.svg",
    name: " Man Shoes",
  ),
  Category(
    icon: "assets/icons/categories/shirt.svg",
    name: " shirt",
  ),
  Category(
    icon: "assets/icons/categories/skirt.svg",
    name: " skirt",
  ),
  Category(
    icon: "assets/icons/categories/t-shirt.svg",
    name: "Tshirt",
  ),
  Category(
    icon: "assets/icons/categories/woman-bag.svg",
    name: " Woman Bag",
  ),
  Category(
    icon: "assets/icons/categories/woman-pants.svg",
    name: "Woman Pants",
  ),
  Category(
    icon: "assets/icons/categories/woman-shoes.svg",
    name: "Woman Shoes",
  ),
  Category(
    icon: "assets/icons/categories/woman-t-shirt.svg",
    name: "Woman Tshirt",
  ),
];
