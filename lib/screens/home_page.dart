import 'package:flutter/material.dart';
import 'package:news_app_api/widgets/news_list_view.dart';
import '../widgets/category_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'NEWS',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              'APP',
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25),
            ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoryListView(),
              ),
              const NewsListView()
            ],
          )
          // Column(
          //   children: [
          //     CategoryListView(),
          //     Expanded(child: NewsListView()),
          //   ],
          // ),
          ),
    );
  }
}
