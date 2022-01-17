import 'package:flutter/material.dart';

class NewsHeader extends StatelessWidget {
  const NewsHeader({Key? key}) : super(key: key);

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
