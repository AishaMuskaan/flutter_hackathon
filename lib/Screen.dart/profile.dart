import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var lst1 = ["Email", "Phone Number", "Date Of Birth", "City"];
  var lst2 = ["email123@gmail.com", "090078601","1-1-2000","Karachi"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(onPressed: (){}, 
        icon: Icon(Icons.keyboard_arrow_left_outlined, color: Colors.indigo.shade900, size: 50,),)
      ),
      body: Column(
        children: [
          Center(child :
          Container(
            margin: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width*1,
            height: MediaQuery.of(context).size.height*0.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
              radius: 75,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 8,
                    color: Colors.deepPurple.shade900
                  ),
                  gradient: RadialGradient(colors: [
                    Colors.indigo.shade900,
                    Colors.grey.withOpacity(0.5)
                  ])
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: Text("Aisha Shahid", 
              style: TextStyle(fontSize: 25, color: Colors.black),),
            )
              ],
            )
          )
          ),
          ListView.builder(
            shrinkWrap: true,
               physics: NeverScrollableScrollPhysics(),
            itemCount: lst1.length,
            itemBuilder: (context,i){
              return ListTile(
                title: Text("${lst1[i]}", 
                style: TextStyle(color: Colors.teal.shade900, fontSize: 20),),
                subtitle: Text(lst2[i], 
                style: TextStyle(color: Colors.grey[700], fontSize: 17),),
              );
            }),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 35),
                child: Icon(Icons.favorite_sharp, color: Colors.indigo.shade900, size: 35,),
              ),
            )
        ],
      )
    );
  }
}