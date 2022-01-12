import 'package:flutter/material.dart';
import '../main.dart';
import './login.dart';
import './signup.dart';

class Landing extends StatefulWidget {
  const Landing({Key? key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset("assets/images/vgn.png",
                  fit:BoxFit.cover,
                ),
                SizedBox(
                  height: 20.0,
                ),
               ElevatedButton(
                   onPressed:()=>{
                      Navigator.pushNamed(context, 'login_screen'),
                   },
                   child:Text('Log in'),
               ),
                ElevatedButton(
                  onPressed:()=>{
                    Navigator.pushNamed(context, 'signup_screen'),
                  },
                  child:Text('Sign up'),
                ),
              ]),
        ));
  }
}
