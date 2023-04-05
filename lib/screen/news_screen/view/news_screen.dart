import 'package:flutter/material.dart';
import 'package:news_with_api/screen/news_screen/provider/news_provider.dart';
import 'package:provider/provider.dart';

class News_screen extends StatefulWidget {
  const News_screen({Key? key}) : super(key: key);

  @override
  State<News_screen> createState() => _News_screenState();
}

class _News_screenState extends State<News_screen> {
  @override
  void initState() {
    // TODO: implement initState
    Provider.of<News_Provider>(context, listen: false).NewsApiCall();
    super.initState();
  }

  News_Provider? ProviderT;
  News_Provider? ProviderF;

  @override
  Widget build(BuildContext context) {
    ProviderT = Provider.of<News_Provider>(context, listen: true);
    ProviderF = Provider.of<News_Provider>(context, listen: false);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(0, 2.0),
                blurRadius: 4.0,
              )
            ]),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.black,
              centerTitle: true,
              leading: Icon(Icons.online_prediction_outlined),
              actions: [Icon(Icons.newspaper_rounded)],
              title: Text(
                "All news",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     ProviderF!.NewsApiCall();
            //   },
            //   style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            //   child: Text(
            //     "Show News",
            //     style: TextStyle(color: Colors.black),
            //   ),
            // ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    // leading: Text("${ProviderT!.NewsList![index].author}"),
                    title: Text("${ProviderT!.NewsList![index].author}",style: TextStyle(color: Colors.white),),
                    // trailing: ,

                    // "${ProviderT!.NewsList![index].url}"),
                    subtitle: Text("${ProviderT!.NewsList![index].title}",style: TextStyle(color: Colors.grey.shade400)),

                  leading: Container(
                      height: double.infinity,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(color: Colors.purple.shade100, width: 2),
                      ),
                      child: Image.network(

                        "${ProviderT!.NewsList[index].urltoimg}",
                        fit: BoxFit.contain,

                      ),
                    ),

                    // trailing: Container(child: Text("${ProviderT!.NewsList[index].name}")),
                  );

                  //   ListTile(
                  //   title: Text(
                  //     "${ProviderT!.NewsList[index].title}",
                  //     style: TextStyle(color: Colors.white),
                  //   ),
                  //
                  //   leading: Container(
                  //     height: 300,
                  //     width: 100,
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(8),
                  //       color: Colors.white,
                  //       border: Border.all(color: Colors.blueAccent, width: 2),
                  //     ),
                  //     child: Image.network(
                  //
                  //       "${ProviderT!.NewsList[index].image}",
                  //       fit: BoxFit.contain,
                  //
                  //     ),
                  //   ),
                  //
                  //   subtitle: Text(
                  //     "${ProviderT!.NewsList[index].price}",
                  //     style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.w700),
                  //   ),
                  //   trailing: Text(
                  //     "${ProviderT!.NewsList[index].id}",
                  //     style: TextStyle(
                  //         color: Colors.blueAccent,
                  //         fontWeight: FontWeight.bold,
                  //         fontSize: 15),
                  //   ),
                  // );
                },
                itemCount: ProviderF!.NewsList.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
