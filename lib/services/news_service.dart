import 'package:dio/dio.dart';
import 'package:new_flutter_project/models/article_model.dart';

class NewsService {
  final dio = Dio();
  final String cat;
  NewsService({required this.cat});
  Future<List<ArticleModel>> GetNews() async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/everything?q=$cat&apiKey=f032fb0aed3d4e3194d1d48d9f47c0c2");
      Map<String, dynamic> JsonData = response.data;
      List articles = JsonData['articles'];
      List<ArticleModel> articleList = [];
      for (var i in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(i);
        articleList.add(articleModel);
      }
      return articleList;
    }
    catch (e) {
      return [];
    }
  }
}
