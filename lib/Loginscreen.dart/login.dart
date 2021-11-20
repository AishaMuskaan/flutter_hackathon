import 'package:flutter/material.dart';
import 'package:mini_hackathon/loginscreen.dart/body.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Stack(
          children: <Widget>[
           Text(
            'Login',
              style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              foreground: Paint()
              ..style = PaintingStyle.stroke
              ..strokeWidth = 6
              ..color = Colors.indigo.shade900),
           ),
           Text(
            'Login',
              style: TextStyle(
              fontSize: 30,
              color: Colors.white),
           ),
          ],
        )
      ),
    body: SingleChildScrollView(child: Body()),
    );
  }
}