import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Colors.orange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
              ),
              padding: EdgeInsets.zero,
              child:Text('Welcome to VGN,Stay Connected!',
              style: TextStyle(
                fontWeight:FontWeight.bold,
                color:Colors.black,
                fontSize: 24,
              ),
            ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text('Home',
                style:TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, 'home_screen');
                setState(() {});
              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.game_controller_solid,
                color: Colors.black,
              ),
              title: Text('FlapV',
                style:TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: (){
                Navigator.pushNamed(context, 'game_screen');
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
