import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({ Key? key }) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
                        child: Icon(Icons.mail_sharp, color: Colors.white,size: 100,),
                      ),
                      Text("Drop line about us", 
                      style: TextStyle(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold),),
                      Text("...", 
                      style: TextStyle(fontSize: 40, color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              )),
            Container(
              margin: EdgeInsets.all(20),
              child: Icon(Icons.location_pin, color: Colors.red, size: 25,)),
            Container(
              margin: EdgeInsets.all(20),
              child: Text("267 Julian Moterway, Lalukheat, Karachi", 
              style: TextStyle(color: Colors.black,fontSize: 18),),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text("Open Map", 
              style: TextStyle(color: Colors.blue, fontSize: 18),),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Icon(Icons.phone_android_outlined, color: Colors.red,size: 25,),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text("0900-78601", 
              style: TextStyle(color: Colors.black,fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Icon(Icons.query_builder, color: Colors.red,size: 25,),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text("Monday-Friday", 
              style: TextStyle(color: Colors.black,fontSize: 18)),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text("09:00-17:00", 
              style: TextStyle(color: Colors.black,fontSize: 18)),
            )
          ],
        )
      );

  }
}