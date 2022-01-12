import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        // color: Colors.orange,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text('DilliKaMaalik'),
                accountEmail: Text('dkm@tohkar.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/MyDP.png"),
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
              // onTap: ()=>{},
            ),
          ],
        ),
      ),
    );
  }
}
