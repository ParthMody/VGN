import 'package:flutter/material.dart';
import 'package:my_app/modals/news.dart';
import 'package:my_app/widgets/news_widgets/news_items.dart';

class NewsList extends StatelessWidget {
  const NewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemCount:NewsModal.news.length,
        itemBuilder: (context,index){
          final newslist=NewsModal.news[index];
          return InkWell(
              onTap: ()=>Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(context)=>NewsItem(
                    newslist: newslist,
                  ),
                ),
              ),
              child: NewsItem(newslist: newslist));
        },
      ),
    );
  }
}
