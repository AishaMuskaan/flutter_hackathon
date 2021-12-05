import 'package:flutter/material.dart';
import 'package:mini_hackathon/data.dart';

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
        icon: Icon(Icons.keyboard_arrow_left,
        size: 45, 
        color: Colors.red.shade500,)),
        title: Row(
          children: const [
            Text("Favourite",
            style: TextStyle(
              color: Colors.black, 
              fontSize: 23, 
              fontWeight: FontWeight.bold)
              ),
            Icon(Icons.favorite_sharp, 
            color: Colors.red,
            size: 25,),
          ],
        ),
      ),
      body: ListView.builder(
                   itemCount: fav.length,
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
                        fav.removeAt(index);
                      });
                    }, 
                     icon: const Icon(Icons.delete,
                     color: Colors.black,
                     size: 35,)),
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
                     TextButton(onPressed: (){}, 
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
                   child: IconButton(onPressed: (){}, 
                    icon: const Icon(Icons.shopping_cart_outlined, 
                    color: Colors.black,)),
                            )
                          ],
                          ),
                        );
                      }),
    );
  }
}