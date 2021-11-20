import 'package:flutter/material.dart';
import 'package:mini_hackathon/Screen.dart/bottombar.dart';

class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  TextEditingController txt = TextEditingController();
  var gettxt = "";
  void password(){
    if(gettxt=="123456"){
      Navigator.of(context).push(MaterialPageRoute(builder: (context) =>Bottombar()));
    }
    else{
      ShowAlertDialog(context);
    }
  }
  ShowAlertDialog(BuildContext context){
    AlertDialog alert= AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      title: Text("Wrong Password"),
      content: Text("Please try again"),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
          txt.clear();
        }, 
        child: Text("OK",
        style: TextStyle(fontSize: 17, color: Colors.lightBlue.shade900, fontWeight: FontWeight.bold)))
      ],
    );
    showDialog(context: context, builder: (BuildContext context){
      return alert;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 30,bottom: 30, left: 15,right: 60),
            width: MediaQuery.of(context).size.width*0.6,
            height: MediaQuery.of(context).size.height*0.3,
            child: Image(image: AssetImage("assets/cart.jpg",),)
          ),
          Container(
            margin: EdgeInsets.all(25),
            width: MediaQuery.of(context).size.width*0.7,
            height: MediaQuery.of(context).size.height*0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                )
              ],
            ),
            child: Center(
              child: TextField(
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '  Username',
                      hintStyle: TextStyle(color: Colors.black, fontSize: 20))
                     ),
                  )
          ),
          Container(
            margin: EdgeInsets.all(28),
            width: MediaQuery.of(context).size.width*0.7,
            height: MediaQuery.of(context).size.height*0.08,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  )
              ],
            ),
            child: Center(
              child: TextField(
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '  Password',
                          hintStyle: TextStyle(color: Colors.black, fontSize: 20)),
                          controller: txt,
                          onChanged: (value){
                            gettxt = value;
                          },
                          ),
            )
          ),
          ElevatedButton.icon(onPressed: (){
            password();
          }, 
           icon: Icon(Icons.login_outlined, color: Colors.black,), 
           label: Text(' Login', 
            style: TextStyle(fontSize: 25, color: Colors.black),),
           style: ElevatedButton.styleFrom(
            primary: Colors.grey.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            side: BorderSide(
              color: Colors.grey.withOpacity(0.5),
              width: 2
            )
          ),
           ),
          SizedBox(height: 10,),
          ElevatedButton(onPressed: (){}, 
           child: Text("Not have an account? Register.", 
            style: TextStyle(
             color: Colors.black,
             fontWeight: FontWeight.bold,
             fontSize: 18
          ),),
           style: ElevatedButton.styleFrom(
            primary: Colors.white
          )
          )
        ],
      ),
    );
  }
}