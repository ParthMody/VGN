import 'package:flutter/material.dart';
import 'package:my_app/utility/route.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name="";
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>();

  moveToHome(BuildContext context)async{
    if(_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, Routes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child:Form(
        key: _formKey,
        child: Column(
          children: [
            Image.asset("assets/images/vgn.png",
                fit:BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Welcome to VGN $name',
              style:TextStyle(
                fontSize: 20,
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
                  hintText:'Enter username',
                  labelText: 'Username',
                ),
              validator: (String? value) {
                if (value != null && value.isEmpty) {
                  return "Username can't be empty";
                }
                return null;
              },
                onChanged:(value){
                  name=value;
                  setState(() {
                  });
                },
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText:'Enter password',
                  labelText: 'Password',
                ),
                validator: (value) {
                  if (value != null && value.isEmpty) {
                    return "Password can't be empty";
                  }
                  else if(value!.length < 6){
                    return "Password length can't be less than 6 characters";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 30.0,
              ),
              InkWell(
                onTap: ()=> moveToHome(context),
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width:changeButton?50:150,
                  height: 50,
                  alignment: Alignment.center,
                  child: changeButton?Icon(Icons.done,color: Colors.white,):Text('Login',
                    style:TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(changeButton?50:8),
                  ),
                ),
              ),
            ],
          ),
          ),
          ],
        ),
      ),
    );
  }
}
