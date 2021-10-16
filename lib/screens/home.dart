import 'package:flutter/material.dart';
import 'package:my_app/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String name="World";
    return Scaffold(
      appBar: AppBar(
        title: Text('VGN'),
        centerTitle: true,
        backgroundColor:Colors.deepOrange,
      ),
      body:Center(
        child:Container(
          child: Text('Hello $name'),
      ),
      ),
      drawer: MyDrawer(),
    );
  }
}
