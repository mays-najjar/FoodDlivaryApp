import 'package:food_delivery_app/models/category.dart';

class Product {
  final String id;
  final String name;
  final String imgUrl;
  final String description;
  final double price;
  final Category category;

  Product({
    required this.id,
    required this.category,
    required this.name,
    required this.imgUrl,
    this.description =
        'Lorem  Ipsum is simply  dummy  text of the printing and typeset Lorem  Ipsum is simply  dummy  text of the printing and typeset',
    required this.price,
  });
}

List<Product> dummyProdects = [
  Product(
      id: '1',
      category: dummyCategories[4],
      name: 'Sushi Box',
      imgUrl: 'https://static.vinwonders.com/production/asian-food-2.jpg',
      price: 6.99),
  Product(
      id: '2',
      category: dummyCategories[2],
      name: 'Ramen & Egg',
      imgUrl: 'https://static.vinwonders.com/production/asian-food-4.jpg',
      price: 5.99),
  Product(
      id: '3',
      category: dummyCategories[3],
      name: 'Shrimp Scampi',
      imgUrl:
          'https://static.vinwonders.com/production/asian-food-5-1536x1023.jpg',
      price: 7.99),
  Product(
      id: '4',
      category: dummyCategories[0],
      name: 'Basmati Rice',
      imgUrl: 'https://static.vinwonders.com/production/asian-food-13.jpg',
      price: 9.99),
  Product(
      id: '5',
      category: dummyCategories[1],
      name: 'Dimsum Siom',
      imgUrl:
          'https://ik.imagekit.io/awwybhhmo/satellite_images/chinese/gray/about_us/12.jpg',
      price: 8.99),
  Product(
      id: '6',
      category: dummyCategories[2],
      name: 'Ramen Sous',
      imgUrl:
          'https://www.mashed.com/img/gallery/why-chinese-food-always-tastes-better-at-a-restaurant/intro-1670630782.jpg',
      price: 8.99),
  Product(
      id: '7',
      category: dummyCategories[3],
      name: 'Shrimp Fire',
      imgUrl:
          'https://www.acouplecooks.com/wp-content/uploads/2020/11/Sauteed-Shrimp-014.jpg',
      price: 6.99),
  Product(
      id: '8',
      category: dummyCategories[4],
      name: 'Sushi Roll',
      imgUrl:
          'https://www.veggiesdontbite.com/wp-content/uploads/2020/05/vegan-veggie-sushi-rolls-34.jpg',
      price: 7.99),
];
