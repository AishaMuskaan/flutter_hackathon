import 'package:flutter/material.dart';
import 'package:mini_hackathon/screens/about.dart';
import 'package:mini_hackathon/screens/cart.dart';
import 'package:mini_hackathon/screens/favourite.dart';
import 'package:mini_hackathon/screens/home/home.dart';

class Drawr extends StatefulWidget {
  const Drawr({ Key? key }) : super(key: key);

  @override
  _DrawrState createState() => _DrawrState();
}

class _DrawrState extends State<Drawr> {
  var list1 = ["Logout", "Cart", "Favourite", "About"];
  var list2 = [Icons.login_outlined,  Icons.favorite_sharp, Icons.shopping_cart_sharp, Icons.info];
  var list3 = [
    const Home(),
    const Cart(),
    const Favourite(),
    const About()
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child:UserAccountsDrawerHeader(
              decoration: BoxDecoration(
              color: Colors.white
            ),
              accountName: Text("Username"), 
              accountEmail: Text("abcuser@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/profile.png")),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: list1.length,
              itemBuilder: (context,i){
                return ListTile(
                  leading: Icon(list2[i], 
                  color: Colors.grey, 
                  size: 25,),
                  title: Text(list1[i],
                  style: const TextStyle(
                    color: Colors.black, 
                    fontSize: 18),),
                  onTap:(){ 
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>list3[i]));
                    }
                );
              })
        ],
      ),
    );
  }
}