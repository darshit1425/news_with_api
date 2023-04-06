import 'package:flutter/cupertino.dart';

import 'package:news_with_api/screen/news_screen/modal/news_modal.dart';
import 'package:news_with_api/utils/news_helper.dart';
import 'package:http/http.dart' as http;

class India_Provider extends ChangeNotifier {
  NewsModel? newsModel;
ApiHelper apiHelper = ApiHelper();

  Future<NewsModel> getNews() async {

    NewsModel n1 = await apiHelper.newsApi("in");

    newsModel = n1;

    return n1;

  }
}
