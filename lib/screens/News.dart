import 'package:flutter/material.dart';
import 'package:my_app/helper/data.dart';
import 'package:my_app/modals/news_category.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {

  List<NewsCategory> categories=new List.filled(10, NewsCategory());
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories=getCategories().cast<NewsCategory>();
  }
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('VGN',
              style: TextStyle(
                color: Colors.white,
                fontWeight:FontWeight.bold,
              ),
            ),
            Text('Feed',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold
            ),
            ),
          ],
        ),
      ),
      // body: Container(
        // child: Column(
        //   children: [
        //     Container(
        //       padding: EdgeInsets.symmetric(horizontal: 15),
        //       height: 70,
        //       child: ListView.builder(
        //         shrinkWrap: true,
        //         scrollDirection: Axis.horizontal,
        //         itemCount: categories.length,
        //         itemBuilder: (context,index){
        //           return Container(),
        //           // return CategoryTile(
        //           //     imageUrl:categories[index].imageUrl,
        //           //     categoryName: categories[index].categoryName,
        //           );
        //         },
        //       ),
            );
    //     ),
    //   ),
    // );
  }
}

class CategoryTile extends StatelessWidget {
  final imageUrl,categoryName;

  const CategoryTile({Key? key, required this.imageUrl, this.categoryName})
      : assert(imageUrl!=null && categoryName!=null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(right: 15),
      child: Stack(
        children: [
          Image.network(imageUrl,width: 120,height: 60,fit: BoxFit.cover),
          Container(
            child: Text(categoryName,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
