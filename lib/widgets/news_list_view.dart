import 'package:flutter/widgets.dart';
import 'package:news_app_api/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 3,
        (context, index) {
          return const NewsTile();
        },
      ),
    );
  }
}
