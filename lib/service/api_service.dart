import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:newsify/model/article_model.dart';

class API {
  static const String _baseUrl = 'https://newsapi.org/v2';
  static const String _apiKey =
      '190ab1183254410d8d4b1ec957cbba2c'; // Replace with your own API key

  Future<List<NewsArticle>> fetchArticles() async {
    final response = await http
        .get(Uri.parse('$_baseUrl/top-headlines?country=in&apiKey=$_apiKey'));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      final List<dynamic> articleListJson = json['articles'];
      return articleListJson.map((json) => NewsArticle.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load articles');
    }
  }
}
