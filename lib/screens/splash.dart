import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mini_hackathon/screens/login.dart';

class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer( const Duration(seconds: 3),
    ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const Login()))
    );
  }
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(
          image: AssetImage("assets/cart.jpg")
          ),
      ),
    );
  }
}