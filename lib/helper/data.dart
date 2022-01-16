import 'package:my_app/modals/news_category.dart';

List<NewsCategory> getCategories(){

  List<NewsCategory> category=new List.filled(10, NewsCategory());
  NewsCategory newsCategory=new NewsCategory();

  newsCategory.imageUrl='https://images.unsplash.com/photo-1493711662062-fa541adb3fc8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80';
  newsCategory.categoryName='Video games';
  category.add(newsCategory);

 //2
  newsCategory.imageUrl='https://images.unsplash.com/photo-1534423861386-85a16f5d13fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80';
  newsCategory.categoryName='Gaming Industry';
  category.add(newsCategory);

  return getCategories();
}