import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Column(
        children: [
          Image.asset("assets/images/vgn.png",
              fit:BoxFit.cover,
          ),
          SizedBox(
            height: 20.0,
          ),
          Text(
            'Welcome to VGN, Stay connected with the latest video game news',
            style:TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child:Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText:'Enter email id',
                labelText: 'Email id',
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText:'Enter password',
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(
                child:Text('Login'),
                style:TextButton.styleFrom() ,
                onPressed: (){
                  print('Hello');
                },
            ),
          ],
        ),
        ),
        ],
      ),
    );
  }
}
