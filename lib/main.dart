import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_with_api/india_api/view/india_screen.dart';
import 'package:news_with_api/screen/another_view_Screen/view/news2_scren.dart';
import 'package:news_with_api/screen/news_screen/provider/news_provider.dart';
import 'package:provider/provider.dart';

import 'india_api/provider/india_provider.dart';
import 'screen/news_screen/view/news_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => India_Provider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          // '/': (context) => News_screen(),
          // '1': (context) => News_Screen2(),
          '/':(context) => India(),
        },
      ),
    ),
  );
}
