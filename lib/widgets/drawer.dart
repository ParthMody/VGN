import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  String uname="";

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
                color: Colors.deepOrangeAccent,
              ),
              padding: EdgeInsets.zero,
              child:Text('Welcome to VGN, $uname',
              style: TextStyle(
                fontWeight:FontWeight.bold,
                color: Colors.black,
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
              title: Text('Game',
                style:TextStyle(
                  color: Colors.black,
                ),
              ),
              // onTap: ()=>{
              //   Navigator.pushNamed(context, '');
              // },
            ),
            TextFormField(
              decoration: new InputDecoration(
                hintText: 'Enter username',
              ),
              onChanged: (value){
                uname=value;
                setState(() {
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
