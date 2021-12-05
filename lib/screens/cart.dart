import 'package:flutter/material.dart';
import 'package:mini_hackathon/data.dart';

class Cart extends StatefulWidget {
  const Cart({ Key? key }) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  delete(index){
    setState(() {
      cartName.removeAt(index);
      cartPrices.removeAt(index);
      cartImages.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.keyboard_arrow_left,
        size: 45, 
        color: Colors.red.shade500,)),
        title: Row(
          children: const [
            Text("MyCart",
            style: TextStyle(
              color: Colors.black, 
              fontSize: 23, 
              fontWeight: FontWeight.bold)
              ),
            Icon(Icons.shopping_cart_outlined, 
            color: Colors.red,
            size: 25,),
          ],
        ),
      ),
      body: ListView.builder(
                 itemCount: cartName.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context,index){
                return Card(
                 shadowColor: Colors.grey,
                 elevation: 8,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20)
                ),
                 clipBehavior: Clip.antiAlias,
                 margin: const EdgeInsets.only(right: 70,left: 70,top: 10,bottom: 10),
                 child: Column(
                  children: [
                  const Align(
                    alignment: Alignment.topLeft,
                    child: Chip(
                     backgroundColor: Colors.red,
                     label: Text("30%off",
                      style: TextStyle(
                        color: Colors.white, 
                        fontWeight: FontWeight.bold)
                        )
                        ),
                  ),
                Container(
                 height: MediaQuery.of(context).size.height*0.2,
                 width: MediaQuery.of(context).size.width*0.6,
                 decoration: BoxDecoration(
                 image: DecorationImage(
                   image: AssetImage(cartImages[index]), 
                   fit: BoxFit.fitHeight)
            
          ),
            ),
                Container(
                 margin: const EdgeInsets.only(left: 5,right: 5),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                   TextButton(onPressed: (){}, 
                    child: Text(cartName[index],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18, 
                      fontWeight: FontWeight.bold),)),
                   Text(cartPrices[index],
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18, 
                      fontWeight: FontWeight.bold),)
          ],
              ),
            ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: IconButton(onPressed: (){
                   delete(index);
                              }, 
                   icon: const Icon(Icons.delete, 
                   color: Colors.black,
                   size: 35,)),
                )
          ],
          ),
        );
      }) ,
      
    );
  }
}