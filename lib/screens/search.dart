import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shape: const Border(
          bottom: BorderSide(
            color: Colors.black, 
            width: 3)
            ),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, 
        icon: const Icon(Icons.cancel_outlined, 
        color: Colors.blueGrey, 
        size: 25,)
        ),
        title: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
             hintText: "Search by name or address",
             hintStyle: TextStyle(
               color: Colors.grey[600], 
               fontSize: 18)
          ),
        ),
        actions: const [
          Icon(Icons.search, 
          color: Colors.blueGrey, 
          size: 30,)
        ],
      ),
    );
  }
}