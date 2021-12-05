import 'package:flutter/material.dart';
import 'package:mini_hackathon/screens/bottombar.dart';
import 'package:mini_hackathon/screens/cart.dart';
import 'package:mini_hackathon/screens/drawr.dart';
import 'package:mini_hackathon/screens/favourite.dart';
import 'package:mini_hackathon/data.dart';
import 'package:mini_hackathon/screens/home/body.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawr(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.red.shade500),
        title: const Text("Home Page",
        style: TextStyle(
          color: Colors.black,
          fontSize: 25
        ),),
        actions: [
         Padding(padding: const EdgeInsets.only(right: 2),
          child: IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Favourite()));
          }, 
          icon: const Icon(Icons.favorite_sharp,
          color: Colors.red, 
          size: 35,),)
          ),
          Padding(padding: const EdgeInsets.only(right: 5),
          child: Stack(
            children: [
              IconButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Cart()));
            }, 
            icon: const Icon(Icons.shopping_cart_sharp,
            color: Colors.red, 
            size: 32,),),
            Positioned(
              left: 28,
              top: -3,
              child: CircleAvatar(
                radius: 10,
                backgroundColor: Colors.red.shade200,
              child: Text("$countcart",
              style: const TextStyle(
                color: Colors.black
              ),),
            ))
          ])
          ),
       ],
        ),
      body: const Body(),
      bottomNavigationBar: const BottomBar(),
    );
  }
}
