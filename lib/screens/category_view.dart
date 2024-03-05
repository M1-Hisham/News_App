import 'package:flutter/material.dart';

import '../widgets/new_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.keywords});
  final String keywords;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'News',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            Text(
              keywords,
              style:
                  const TextStyle(color: Colors.deepOrangeAccent, fontSize: 20),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            NewsListViewBuilder(
              keywords: keywords,
            )
          ],
        ),
      ),
    );
  }
}
