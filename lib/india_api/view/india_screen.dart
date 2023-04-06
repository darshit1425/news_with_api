import 'package:flutter/material.dart';
import 'package:news_with_api/india_api/modal/india_modal.dart';
import 'package:news_with_api/screen/news_screen/modal/news_modal.dart';
import 'package:provider/provider.dart';

import '../../screen/news_screen/provider/news_provider.dart';
import '../provider/india_provider.dart';

class India extends StatefulWidget {
  const India({Key? key}) : super(key: key);

  @override
  State<India> createState() => _IndiaState();
}

class _IndiaState extends State<India> {
  NewsModel? news;

  India_Provider? ProviderT;
  India_Provider? ProviderF;

  @override
  void initState() {
    super.initState();

    Provider.of<India_Provider>(context,listen: false).getNews("in");
  }
  @override
  Widget build(BuildContext context) {
    ProviderT = Provider.of<India_Provider>(context, listen: true);
    ProviderF = Provider.of<India_Provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 2.0),
                  blurRadius: 4.0,
                ),
              ],
            ),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.black,
              centerTitle: true,
              leading: Icon(Icons.online_prediction_outlined),
              actions: [Icon(Icons.newspaper_rounded)],
              title: Text(
                "Contry news",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    ProviderT!.getNews("in");
                  },
                  child: Text("in"),
                ),
                TextButton(
                  onPressed: () {
                    ProviderT!.getNews('uk');
                  },
                  child: Text("uk"),
                ),
                TextButton(
                  onPressed: () {
                    ProviderT!.getNews('us');
                  },
                  child: Text("us"),
                ),
                TextButton(
                  onPressed: () {
                    ProviderT!.getNews('au');
                  },
                  child: Text("au"),
                ),
              ],
            ),
            Expanded(
              child: FutureBuilder(
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Text("${snapshot.error}");
                  } else if (snapshot.hasData) {
                    NewsModal? newsModel = snapshot.data;
                    return ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("${newsModel.articles[index].title}"),
                        );
                      },
                      itemCount: newsModel!.articles.length,
                    );
                  }
                  ;
                  return CircularProgressIndicator();
                },
                future: ProviderT!.getNews("in"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
