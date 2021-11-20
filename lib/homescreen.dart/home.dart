import 'package:flutter/material.dart';
import 'package:mini_hackathon/cart.dart';
import 'package:mini_hackathon/favourite.dart';
import 'package:mini_hackathon/homescreen.dart/drawr.dart';
import 'package:mini_hackathon/homescreen.dart/hcolumn.dart';


class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var lst = ["rgg","fgh","rgg","fgh"];
  var lst2 = ["b", "v","rgg","fgh"];
  var lst3 = ["assets/bshoes.jpg","assets/bshoes.jpg","assets/bshoes.jpg","assets/bshoes.jpg",];
  var list = ["Shoes","Suit", "Jeans", "Track Suits"];
  var list2 = ["15 Pieces left", "10 Pieces left","3 Pieces left","22 Pieces left"];
  var list3 = ["assets/bshoes.jpg","assets/suit.png","assets/bjeans.jpg","assets/tracksuit.jpg"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawr(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.red),
       title: Text(
            'Home Page',
              style: TextStyle(
              fontSize: 25,
              color: Colors.black,fontWeight: FontWeight.bold),
           ),
       actions: [
         Padding(padding: EdgeInsets.only(right: 5),
          child: IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Favourite()));
          }, 
          icon: Icon(Icons.favorite_sharp,
          color: Colors.red, size: 30,),)
          ),
          Padding(padding: EdgeInsets.only(right: 2),
          child: IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Cart()));
          }, 
          icon: Icon(Icons.shopping_cart_sharp,
          color: Colors.red, size: 30,),)
          ),
       ],
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                  itemCount: lst.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,i){
                     return Container(
                       width: MediaQuery.of(context).size.width*0.46,
                       height: MediaQuery.of(context).size.height*0.02,
                       child: ListTile(
                       leading: Image(image: AssetImage(list3[i]),),

                       title: Text(list[i]),
                       subtitle: Text(list2[i]),
                     ),
                     );
                  }),
              ),
              Flexible(child: HColumn() )
            ],
          ),
        ),
      )
    
      
      );
  }
}