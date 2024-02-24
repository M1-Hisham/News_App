import 'package:flutter/material.dart';
import 'package:news_app_api/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Stack(alignment: Alignment.center, children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.orange.withAlpha(500),
            //     spreadRadius: 1,
            //     blurRadius: 50,
            //     offset:
            //         const Offset(0, 4), // changes position of shadow
            //   ),
            // ],
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(10),
            color: Colors.amberAccent,
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
    );
  }
}
