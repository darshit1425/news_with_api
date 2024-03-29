import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;

import '../modal/news_modal.dart';

class News_Provider extends ChangeNotifier {
  List<dynamic> NewsList = [];

  Future<void> IndiaApi() async {
    // post api link online data  call
    String newslink =
        "https://newsapi.org/v2/everything?q=in&from=2023-03-05&sortBy=publishedAt&apiKey=421bf1b94b28421cbaeb97808a515ae8";
    //api call

    Uri uri = Uri.parse(newslink);
    var resource = await http.get(uri);
    var json = jsonDecode(resource.body);

    NewsModel newsModel = NewsModel().newsFromJson(json);

    NewsList = newsModel.articleList!;
    notifyListeners();
  }
}
