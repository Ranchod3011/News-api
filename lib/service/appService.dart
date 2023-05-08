import 'dart:convert';
import 'package:http/http.dart';
import 'package:news_api/models/article.dart';

class AppService{
  final endpoint = 'https://newsapi.org/v2/everything?q=tesla&from=2023-04-08&sortBy=publishedAt&apiKey=87bc34186f3a4533ad2e3d1418b70442';
  Future<List<Article>> getArticle() async{
    Response response = await get(Uri.parse(endpoint));
    if(response.statusCode==200){
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> article = body.map((dynamic item) => Article.fromJson(item)).toList();
      return article;
    }
    else{
      throw 'Data not fetch';
    }
  }
}