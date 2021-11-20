
import 'package:flutter/material.dart';
import 'package:mini_hackathon/cart.dart';
import 'package:mini_hackathon/description.dart/description1.dart';
import 'package:mini_hackathon/description.dart/description2.dart';
import 'package:mini_hackathon/description.dart/description3.dart';
import 'package:mini_hackathon/description.dart/description4.dart';
import 'package:mini_hackathon/description.dart/description5.dart';
import 'package:mini_hackathon/description.dart/description6.dart';
import 'package:mini_hackathon/description.dart/description7.dart';
import 'package:mini_hackathon/description.dart/description8.dart';
import 'package:mini_hackathon/favourite.dart';

class HColumn extends StatefulWidget {
  const HColumn({ Key? key }) : super(key: key);

  @override
  _HColumnState createState() => _HColumnState();
}

class _HColumnState extends State<HColumn> {
  var name = ["Black T-Shirts", "Blue Jeans","Joggers","Checkers Shirt","Cargo Pants","Jeans", "Shoes","Formal Shirts"];
  var price= ["\$50", "\$100", "\$350","\$150","\$200","\$250","\$300", "\$400"];
  var images=["assets/t-shirts.jpg","assets/jeans.png","assets/joggers.jpg","assets/checker.jpg",
              "assets/cargo.jpg","assets/jeans2.jpg","assets/shoes.jpg","assets/shirt.jpg"];
  var description = [Description1(), Description2(), Description3(), Description4(), Description5(), Description6(), Description7(), Description8()];
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: name.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context,index){
        return Card(
          shadowColor: Colors.grey,
          elevation: 8,
          shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(20)
                ),
                clipBehavior: Clip.antiAlias,
                margin: EdgeInsets.only(right: 70,left: 70,top: 10,bottom: 10),
          child: Column(
          children: [
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [ 
            IconButton(onPressed: (){}, 
            icon: Icon(Icons.favorite_outline ,color: Colors.black,)),
            Chip(
              backgroundColor: Colors.red,
              label: Text("30%off",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))
          ],
            ),
            Container(
          height: MediaQuery.of(context).size.height*0.2,
          width: MediaQuery.of(context).size.width*0.6,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(images[index]), fit: BoxFit.fitHeight)
            
          ),
            ),
            Container(
              margin: EdgeInsets.only(left: 5,right: 5),
              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              TextButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>description[index]));
              }, 
              child: Text(name[index],
              style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),)),
              Text(price[index],
              style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),)
          ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 230),
              child: IconButton(onPressed: (){
                //  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Cart()));
              }, 
              icon: Icon(Icons.shopping_cart_outlined, color: Colors.black,)),
            )
          ],
          ),
        );
      });
  }
}