import 'package:flutter/widgets.dart';
import 'package:news_app_api/models/category_model.dart';

import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({
    super.key,
  });
  final List<CategoryModel> categories = [
    CategoryModel(
      image: 'assets/science.avif',
      name: 'SPORT',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      name: 'SPORT',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      name: 'SPORT',
    ),
    CategoryModel(
      image: 'assets/science.avif',
      name: 'SPORT',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
