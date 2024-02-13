import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/product.dart';
import 'package:food_delivery_app/utils/app_color.dart';

class FavoritsPage extends StatelessWidget {
  const FavoritsPage({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint('FavoritesPage build()');

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
        ),
        itemCount: dummyProdects.length,
        itemBuilder: (context, index) {
          return buildProductCard(context, index);
        },
      ),
    );
  }

  Widget buildProductCard(BuildContext context, int index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Image.network(
                dummyProdects[index].imgUrl,
                height: 90,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 4.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(dummyProdects[index].name,
                        style: Theme.of(context).textTheme.titleSmall),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite),
                      iconSize: 15.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dummyProdects[index].category.title,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(color: AppColors.category)),
                Text('\$${dummyProdects[index].price}',
                    style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
