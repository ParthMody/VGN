import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/screens/feed.dart';
import 'package:my_app/screens/home.dart';
import 'package:my_app/screens/landing.dart';
import 'package:my_app/screens/login.dart';
import 'package:my_app/screens/signup.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch:Colors.orange,
          fontFamily:GoogleFonts.lato().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      // initialRoute:'landing_screen',
      initialRoute:'home_screen',
      routes: {
        '/':(context)=>Login(),
        'landing_screen':(context)=>Landing(),
        'signup_screen':(context)=>Signup(),
        'login_screen':(context)=>Login(),
        'home_screen':(context)=>Home(),
        'feed_screen':(context)=>Feed()
      },
    );
  }
}
