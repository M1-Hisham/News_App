import 'package:dio/dio.dart';
import 'package:news_app_api/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews({required String keywords}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/everything?q=$keywords&language=ar&apiKey=cf2d85c73aed43948f3293c09535d877');

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesLest = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          name: article["source"]["name"],
          image: article["urlToImage"],
          titel_1: article["title"],
          suptitel: article["description"],
          url: article["url"],
        );
        articlesLest.add(articleModel);
      }
      return articlesLest;
    } catch (e) {
      return [];
    }
  }
}
