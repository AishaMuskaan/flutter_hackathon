import 'package:flutter/material.dart';
import 'package:mini_hackathon/screens/home/home.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController txt = TextEditingController();
  var gettxt = "";
  void password(){
    if (gettxt == "123456"){
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Home()));
    } else {
      showAlertDialog(context);
    }
  }
  showAlertDialog(BuildContext context){
    AlertDialog alert= AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      title: const Text("Wrong Password"),
      content: const Text("Please try again"),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop();
          txt.clear();
        }, 
        child: Text("OK",
        style: TextStyle(fontSize: 17, color: Colors.red.shade500, fontWeight: FontWeight.bold)))
      ],
    );
    showDialog(context: context, builder: (BuildContext context){
      return alert;
    });
  }
 @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Login", 
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30, 
          color: Colors.red.shade600)
          ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
              margin: const EdgeInsets.all(5.0),
              width: MediaQuery.of(context).size.width*0.8,
              height: MediaQuery.of(context).size.height*0.4,
              child: const Image(image: AssetImage("assets/cart.jpg",),)
            ),
              Container(
                margin: const EdgeInsets.only(top: 20.0,bottom: 20.0),
                width: MediaQuery.of(context).size.width*0.6,
                height: MediaQuery.of(context).size.height*0.08,
                child: TextField(
                  style: const TextStyle(color: Colors.black,fontSize: 20),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      )
                    ),
                    hintText: "Username",
                    hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    )
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20,bottom: 20),
                width: MediaQuery.of(context).size.width*0.6,
                height: MediaQuery.of(context).size.height*0.08,
                child: TextField(
                  style: const TextStyle(color: Colors.black,fontSize: 20),
                  controller: txt,
                  onChanged: (value){
                    gettxt = value;
                  },
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: const BorderSide(
                        color: Colors.black,
                        width: 2,
                      )
                    ),
                    hintText: "Password",
                    hintStyle: const TextStyle(
                      fontSize: 20,
                      color: Colors.black
                    )
                  ),
                ),
              ),
              ElevatedButton.icon(onPressed: (){
                password();
              },
              icon: const Icon(Icons.login_outlined, color: Colors.black,), 
              label: const Text(" Login",
              style: TextStyle(color: Colors.black, fontSize: 25),),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
                ),
                side: const BorderSide(
                  color: Colors.black,
                  width: 2
                )
              ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){}, 
             child: const Text("Not have an account? Register.", 
                style: TextStyle(
                 color: Colors.black,
                 fontSize: 18
            ),),
             style: ElevatedButton.styleFrom(
                primary: Colors.white
            )
            ),
              )
            ],
          ),
        ),
      ),
    );
  }
}