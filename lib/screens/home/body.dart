

import 'package:flutter/material.dart';
import 'package:mini_hackathon/data.dart';
import 'package:mini_hackathon/screens/descriptions/description1.dart';
import 'package:mini_hackathon/screens/descriptions/description2.dart';
import 'package:mini_hackathon/screens/descriptions/description3.dart';
import 'package:mini_hackathon/screens/descriptions/description4.dart';
import 'package:mini_hackathon/screens/descriptions/description5.dart';
import 'package:mini_hackathon/screens/descriptions/description6.dart';
import 'package:mini_hackathon/screens/descriptions/description7.dart';
import 'package:mini_hackathon/screens/descriptions/description8.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  var description = [
    const Description1(),
    const Description2(),
    const Description3(),
    const Description4(),
    const Description5(),
    const Description6(),
    const Description7(),
    const Description8(),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
         mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.3,
            child: ListView.builder(
                  itemCount: catNames.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index){
                     return Align(
                       child: Container(
                         margin: const EdgeInsets.all(5),
                         width: MediaQuery.of(context).size.width*0.46,
                         height: MediaQuery.of(context).size.height*0.08,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20.0),
                           border: Border.all(
                             color: Colors.grey,
                             width: 2
                           ),
                           color: Colors.white,
                           boxShadow: const [
                               BoxShadow(
                               color: Colors.grey
                             )
                           ]
                         ),
                         child: ListTile(
                         leading: Image(image: AssetImage(catImages[index]),),
                         title: Text(catNames[index]),
                         subtitle: Text(catPieces[index]),
                       ),
                       ),
                     );
                  }),
                  ),
          Flexible(
            child: ListView.builder(
             itemCount: prdsNames.length,
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
            Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [ 
              IconButton(onPressed: (){
                setState(() {
                    fav.add(index);
                });
              }, 
               icon: const Icon(Icons.favorite_outline,
               color: Colors.black,)),
              const Chip(
               backgroundColor: Colors.red,
               label: Text("30%off",
                style: TextStyle(
                  color: Colors.white, 
                  fontWeight: FontWeight.bold)
                  )
                  )
                    ],
                      ),
            Container(
             height: MediaQuery.of(context).size.height*0.2,
             width: MediaQuery.of(context).size.width*0.6,
             decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage(prdsImages[index]), 
               fit: BoxFit.fitHeight)
                      
                    ),
                      ),
            Container(
             margin: const EdgeInsets.only(left: 5,right: 5),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               TextButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>description[index]));
                        }, 
               child: Text(prdsNames[index],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18, 
                  fontWeight: FontWeight.bold),)),
               Text(prdsPrices[index],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18, 
                  fontWeight: FontWeight.bold),)
                    ],
                        ),
                      ),
            Padding(
             padding: const EdgeInsets.only(left: 230),
             child: IconButton(onPressed: (){
              setState(() {
                cartName.add(prdsNames[index]);
                cartPrices.add(prdsPrices[index]);
                cartImages.add(prdsImages[index]);
              countcart = cartName.length;
              });
                        }, 
              icon: const Icon(Icons.shopping_cart_outlined, 
              color: Colors.black,)
              ),
                      )
                    ],
                    ),
                  );
                }) 
            )
        ],
      ),
    );
  }
}