import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({ Key? key }) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.keyboard_arrow_left, size: 45, color: Colors.indigo.shade900,)),
        title: Text("Favourites",
        style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 184),
            child: Icon(Icons.favorite_sharp, color: Colors.red,size: 30,),
          )
        ],
      ),
    );
  }
}