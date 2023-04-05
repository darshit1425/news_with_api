import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_with_api/screen/news_screen/provider/news_provider.dart';
import 'package:provider/provider.dart';

import 'screen/news_screen/view/news_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => News_Provider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => News_screen(),
        },
      ),
    ),
  );
}
