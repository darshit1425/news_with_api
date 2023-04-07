import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../screen/news_screen/provider/news_provider.dart';
import '../provider/india_provider.dart';

class India extends StatefulWidget {
  const India({Key? key}) : super(key: key);

  @override
  State<India> createState() => _IndiaState();
}

class _IndiaState extends State<India> {
  India_Provider? ProviderT;
  India_Provider? ProviderF;

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
        // body:
      ),
    );
  }
}
