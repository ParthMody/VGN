import 'package:flutter/material.dart';
import 'package:my_app/modals/news.dart';
import 'package:my_app/widgets/news_widgets/news_image.dart';

class NewsItem extends StatefulWidget {

  final News newslist;

  const NewsItem({Key? key, required this.newslist})
      : assert(newslist!=null),
        super(key: key);

  @override
  _NewsItemState createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Expanded(
        child: Container(
          width: 200,
          height: 200,
          padding: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  children: [
                    Hero(
                      tag:Key(widget.newslist.id.toString()),
                      child: Text(''),
                    ),
                    Expanded(
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(widget.newslist.headl,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),

                            SizedBox(width: 10,),

                            Expanded(
                              child:NewsImage(imageN:widget.newslist.image
                              ),
                            ),

                            SizedBox(width: 10,),

                            Expanded(
                              child: Text(widget.newslist.desc,
                                style:Theme.of(context).textTheme.caption,
                              ),
                            ),
                          ],
                        ),
                    ),
                  ],
                ),
              ),
            ),
        ),
    );
  }
}
