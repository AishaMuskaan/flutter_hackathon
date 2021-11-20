import 'package:flutter/material.dart';

class Description7 extends StatefulWidget {
  const Description7({ Key? key }) : super(key: key);

  @override
  _Description7State createState() => _Description7State();
}

class _Description7State extends State<Description7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.keyboard_arrow_left, color: Colors.orange, size: 55,)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/shoes.jpg"),fit: BoxFit.cover)
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 35,bottom: 25, right: 10,left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Shoes",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),),
                Text("\$300",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20,bottom: 80),
            child: Text("This is a product. This product is very good. This\n is very cool The size is very good. If you buy this\n now, you will enjoy later. the best thing of this\n product is that it is very good. Buy now enjoy later",
            style: TextStyle(fontSize: 18),),
          ),
        ],
      ),
    );
  }
}