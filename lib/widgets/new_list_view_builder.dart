import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../models/article_model.dart';
import '../services/news_services.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
    required this.keywords,
  });
  final String keywords;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  late Future<List<ArticleModel>> future;
  @override
  void initState() {
    super.initState();
    future = NewsServices(Dio()).getNews(keywords: widget.keywords);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data ?? []);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(child: Text('ERROR')),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
