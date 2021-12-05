import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({ Key? key }) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        radius: 75,
                        backgroundColor: Colors.blue[900],
                        child: const Icon(Icons.mail_sharp, 
                        color: Colors.white,
                        size: 100,),
                      ),
                      const Text("Drop line about us", 
                      style: TextStyle(
                        fontSize: 25, 
                        color: Colors.white,
                        fontWeight: FontWeight.bold),),
                      const Icon(Icons.keyboard_control, 
                      color: Colors.white,
                      size: 50
                      )
                    ],
                  ),
                ),
              )),
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
            const Icon(Icons.location_pin, 
            color: Colors.red, 
            size: 25,),
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
            const Text("267 Julian Moterway, Lalukheat, Karachi", 
            style: TextStyle(
              color: Colors.black,
              fontSize: 18),),
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
            const Text("Open Map", 
            style: TextStyle(
              color: Colors.blue, 
              fontSize: 18),),
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
            const Icon(
              Icons.phone_android_outlined, 
              color: Colors.red,
              size: 25,),
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
            const Text("0900-78601", 
            style: TextStyle(
              color: Colors.black,
              fontSize: 18)),
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
            const Icon(
              Icons.query_builder, 
              color: Colors.red,
              size: 25,),
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
            const Text("Monday-Friday", 
            style: TextStyle(
              color: Colors.black,
              fontSize: 18)),
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
            const Text("09:00-17:00", 
            style: TextStyle(
              color: Colors.black,
              fontSize: 18)),
            SizedBox(height: MediaQuery.of(context).size.height*0.04),
          ],
        )
      );

  }
}