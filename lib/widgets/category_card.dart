import 'package:flutter/material.dart';
import 'package:news_app_api/models/category_model.dart';
import 'package:news_app_api/screens/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CategoryView(keywords: category.name),
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Stack(alignment: Alignment.center, children: [
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(category.image),
                  fit: BoxFit.fill,
                  colorFilter: const ColorFilter.mode(
                      Color.fromARGB(138, 158, 158, 158), BlendMode.darken)),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Text(
            category.name,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          )
        ]),
      ),
    );
  }
}
