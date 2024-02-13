import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/product.dart';
import 'package:food_delivery_app/utils/app_color.dart';
import 'package:food_delivery_app/views/widgets/coounter_widget.dart';
import 'package:food_delivery_app/views/widgets/product_spec_item.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey,
      appBar: AppBar(
        title: Text(product.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () => Navigator.of(context).pop('Test'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_border),
          ),
          const SizedBox(width: 8.0),
        ],
        backgroundColor: AppColors.grey,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.grey2,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Image.network(
                          product.imgUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 32.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(product.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 8.0),
                                  Text(product.category.title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(color: AppColors.grey)),
                                ],
                              ),
                              const CounterWidget(),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ProductSpecsItem(title: 'Size', value: 'Large'),
                              SizedBox(height: 30, child: VerticalDivider()),
                              ProductSpecsItem(
                                  title: 'Calories', value: '120 cal'),
                              SizedBox(height: 30, child: VerticalDivider()),
                              ProductSpecsItem(
                                  title: 'Cooking', value: '10 mins'),
                            ],
                          ),
                          const SizedBox(height: 16.0),
                          Text(
                            product.description,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          const SizedBox(height: 16.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text('(\$ ${product.price})',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context)
                                                .primaryColor)),
                              ),
                              Expanded(
                                flex: 2,
                                child: SizedBox(
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Theme.of(context).primaryColor,
                                      foregroundColor: AppColors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                    child: Text('Checkout'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
