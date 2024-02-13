import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final String imgUrl;
  final VoidCallback onTap;

  Category(
      {required this.id,
      required this.title,
      required this.imgUrl,
      required this.onTap});
}

List<Category> dummyCategories = [
  Category(
      id: '1', title: 'Rice', imgUrl: 'assets/images/rice.png', onTap: () {}),
  Category(
      id: '2',
      title: 'Dimsum',
      imgUrl: 'assets/images/dimsum.png',
      onTap: () {}),
  Category(
      id: '3', title: 'Ramen', imgUrl: 'assets/images/ramen.png', onTap: () {}),
  Category(
      id: '4',
      title: 'Shrimp',
      imgUrl: 'assets/images/shrimp.png',
      onTap: () {}),
  Category(
      id: '5', title: 'Sushi', imgUrl: 'assets/images/sushi.png', onTap: () {}),
];
