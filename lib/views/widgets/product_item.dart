import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/product.dart';
import 'package:food_delivery_app/utils/app_color.dart';

class ProductItem extends StatefulWidget {
  final Product dummyProduct;
  bool isFavorite;
  final Function()? onFavoritePressed;

  ProductItem({
    Key? key,
    required this.dummyProduct,
    this.onFavoritePressed,
    this.isFavorite = false,
  }) : super(key: key);

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                  child: Image.network(
                    widget.dummyProduct.imgUrl,
                    height: 90,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  widget.dummyProduct.name,
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.w600),
                ),
                Text(
                  widget.dummyProduct.category.title,
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Text(
                  '\$${widget.dummyProduct.price}',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                )
              ],
            ),
          ),
          Positioned(
            top: 4,
            right: 4,
            child: InkWell(
              onTap: () {
                setState(() {
                  widget.isFavorite = !widget.isFavorite;
                });
                if (widget.onFavoritePressed != null) {
                  widget.onFavoritePressed!();
                }
              },
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Icon(
                    widget.isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
