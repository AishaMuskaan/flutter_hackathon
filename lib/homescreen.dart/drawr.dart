import 'package:flutter/material.dart';
import 'package:mini_hackathon/Screen.dart/bottombar.dart';
import 'package:mini_hackathon/about.dart';
import 'package:mini_hackathon/cart.dart';
import 'package:mini_hackathon/favourite.dart';

class Drawr extends StatefulWidget {
  const Drawr({ Key? key }) : super(key: key);

  @override
  _DrawrState createState() => _DrawrState();
}

class _DrawrState extends State<Drawr> {
  var lst = ["Logout", "Cart", "Favourite", "About"];
  var list = [Icons.login_outlined,  Icons.favorite_sharp, Icons.shopping_cart_sharp, Icons.info];
    var lstt = [
     Bottombar(),
     Cart(),
     Favourite(),
     About()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child:ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/profilelogo.jpg"),
              ),
              title: Text("Username",
              style: TextStyle(color: Colors.black, fontSize: 18),),
              subtitle: Text("abcuser@gmail.com",
              style: TextStyle(fontSize: 15),),
            ) 
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: lst.length,
              itemBuilder: (context,i){
                return ListTile(
                  leading: Icon(list[i], color: Colors.grey, size: 25,),
                  title: Text(lst[i],
                  style: TextStyle(color: Colors.black, fontSize: 18),),
                  onTap:(){ Navigator.of(context).push(MaterialPageRoute(builder: (context)=>lstt[i]));}
                );
              })
        ],
      ),
    );
  }
}