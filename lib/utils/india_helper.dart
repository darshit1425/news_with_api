import 'dart:convert';

import '../screen/news_screen/modal/news_modal.dart';
import 'package:http/http.dart' as http;

class ApiIndia {
  String country = 'in';

  Future<NewsModel> newsApi(String Country) async {
    // post api link online data  call

    String Link =
        "https://newsapi.org/v2/everything?q=$Country&from=2023-03-05&sortBy=publishedAt&apiKey=421bf1b94b28421cbaeb97808a515ae8";

    //api call

    Uri uri = Uri.parse(Link);
    var resource = await http.get(uri);

    // print(resonse.body);
    var Json = jsonDecode(resource.body);

    NewsModel newsModel = NewsModel().newsFromJson(Json);

    return newsModel;

    //
  }
}
