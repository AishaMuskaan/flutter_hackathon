import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.keyboard_arrow_left, size: 45, color: Colors.indigo.shade900,)),
        title: Text("MyCart",
        style: TextStyle(color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 222),
            child: Icon(Icons.shopping_cart_outlined, color: Colors.red,size: 25,),
          )
        ],
      ),
      
    );
  }
}