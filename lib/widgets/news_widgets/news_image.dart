import 'package:flutter/material.dart';

class NewsImage extends StatelessWidget {
  final String imageN;

  const NewsImage({Key? key, required this.imageN})
      :assert(imageN!=null)
      ,super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(imageN,width: 100,height: 200),
      ],
    );
  }
}
