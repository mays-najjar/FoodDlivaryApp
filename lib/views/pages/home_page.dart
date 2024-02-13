import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/category.dart';
import 'package:food_delivery_app/models/product.dart';
import 'package:food_delivery_app/utils/app_color.dart';
import 'package:food_delivery_app/views/pages/product_details.dart';
import 'package:food_delivery_app/views/widgets/product_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? selectedCategoryId;
  late List<Product> filteredProducts;

  @override
  void initState() {
    super.initState();
    filteredProducts = dummyProdects;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                  'https://img.freepik.com/free-vector/flat-design-asian-food-facebook-template_23-2150057871.jpg'),
            ),
            const SizedBox(height: 16),
            const TextField(
                decoration: InputDecoration(
              labelText: 'Find your food! ',
              prefixIcon: Icon(Icons.search),
            )),
            const SizedBox(height: 16),
            SizedBox(
              height: 100,
              child: ListView.builder(
                itemCount: dummyCategories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final dummyCategory = dummyCategories[index];

                  return InkWell(
                    onTap: () {
                      setState(() {
                        if (selectedCategoryId != null &&
                            selectedCategoryId == dummyCategory.id) {
                          selectedCategoryId = null;
                          filteredProducts = dummyProdects;
                        } else {
                          selectedCategoryId = dummyCategory.id;
                          filteredProducts = dummyProdects
                              .where((product) =>
                                  product.category.id == selectedCategoryId)
                              .toList();
                        }
                      });
                    },
                    child: Card(
                      color: dummyCategory.id == selectedCategoryId
                          ? Theme.of(context).primaryColor
                          : null,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              dummyCategory.imgUrl,
                              width: 40,
                              color: dummyCategory.id == selectedCategoryId
                                  ? AppColors.white
                                  : null,
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(
                              dummyCategory.title,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                    color:
                                        dummyCategory.id == selectedCategoryId
                                            ? AppColors.white
                                            : null,
                                  ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            if (filteredProducts.isNotEmpty)
              GridView.builder(
                itemCount: filteredProducts.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) {
                  final dummyProduct = filteredProducts[index];
                  return InkWell(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) => ProductDetailsPage(
                              product: dummyProduct,
                            ),
                          )),
                      child: ProductItem(dummyProduct: dummyProduct));
                },
              ),
            if (filteredProducts.isEmpty)
              const Center(child: Text('No  Products Found')),
          ],
        ),
      ),
    );
  }
}
