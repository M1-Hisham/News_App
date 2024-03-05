import 'package:flutter/widgets.dart';
import 'package:news_app_api/models/category_model.dart';
import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({
    super.key,
  });
  final List<CategoryModel> categories = [
    CategoryModel(
      image: 'assets/business.jpeg',
      name: 'Business',
    ),
    CategoryModel(
      image: 'assets/entertainment.jpg',
      name: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/general.jpeg',
      name: 'General',
    ),
    CategoryModel(
      image: 'assets/health.jpg',
      name: 'Health',
    ),
    CategoryModel(
      image: 'assets/sports.jpg',
      name: 'Sports',
    ),
    CategoryModel(
      image: 'assets/science.jpg',
      name: 'Science',
    ),
    CategoryModel(
      image: 'assets/technology.jpeg',
      name: 'Technology',
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
