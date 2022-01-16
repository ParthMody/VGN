import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/modals/news.dart';

class Feed extends StatefulWidget {
  const Feed({Key? key}) : super(key: key);

  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {
  void initState() {
    super.initState();
    loadData();
  }
  loadData()async{
    var newslist=await rootBundle.loadString("assets/files/newslist.json");
    var decodeData=jsonDecode(newslist);
    var newsData=decodeData["newslist"];
    NewsModal.news=List.from(newsData).map<News>((news) => News.fromMap(news)).toList();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('VGN',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text('Feed',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
