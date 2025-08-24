import 'package:dio/dio.dart';
import 'package:flutterapp/models/articles_models.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticlesModels>> getNews({required String category}) async {
    try {
      var response = await dio.get(
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=32e9a1e01ad3462b87034e30af157e63&category=$category",
      );
      Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata["articles"];
      List<ArticlesModels> articlesList = [];
      for (var article in articles) {
        ArticlesModels articlesModels = ArticlesModels.fromJson(article);
        articlesList.add(articlesModels);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
