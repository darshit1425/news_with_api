import 'package:http/http.dart' as http;

class ApiHelper {
// api call
  Future<void> postApiCall() async {
    // post api link online data  call
    String apilink =
        "https://newsapi.org/v2/everything?q=tesla&from=2023-03-05&sortBy=publishedAt&apiKey=421bf1b94b28421cbaeb97808a515ae8";

    //api call

    Uri uri = Uri.parse(apilink);
    var resonse = await http.get(uri);

    print(resonse.body);
    // var json = jsonDecode(resonse.body);

    //
  }
}
