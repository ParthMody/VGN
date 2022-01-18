import 'package:flutter/material.dart';
import 'package:my_app/modals/news.dart';

class FeedDetails extends StatelessWidget {
  final News newslist;
  const FeedDetails({Key? key, required this.newslist})
      : assert(newslist!=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VGN'),
        centerTitle: true,
      ),
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Text(newslist.headl,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black87,
                        ),
                      ),
                      Image.network(newslist.image,
                        width:200,
                        height:300,
                      ),
                      Expanded(
                        child: Text(newslist.link,
                          style:TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
