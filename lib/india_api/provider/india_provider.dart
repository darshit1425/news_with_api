import 'package:flutter/cupertino.dart';

import 'package:news_with_api/screen/news_screen/modal/news_modal.dart';
import 'package:news_with_api/utils/news_helper.dart';
import 'package:http/http.dart' as http;

class India_Provider extends ChangeNotifier {
  NewsModel? newsModel;
  ApiHelper apiHelper = ApiHelper();

  Future<NewsModel> getNews(String country) async {
    NewsModel news = await apiHelper.newsApi("in");

    newsModel = news;


    return news;
  }
  notifyListeners();

}
