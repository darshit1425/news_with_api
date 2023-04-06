import 'package:flutter/material.dart';

class News_Screen2 extends StatefulWidget {
  const News_Screen2({Key? key}) : super(key: key);

  @override
  State<News_Screen2> createState() => _News_Screen2State();
}

class _News_Screen2State extends State<News_Screen2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
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
              // leading: Icon(Icons.online_prediction_outlined),
              actions: [Icon(Icons.newspaper_rounded)],
              title: Text(
                "All news",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
      ),
    );
  }
}
