import 'package:flutter/material.dart';
import 'package:mini_hackathon/Screen.dart/profile.dart';
import 'package:mini_hackathon/Screen.dart/search.dart';
import 'package:mini_hackathon/homescreen.dart/home.dart';

class Bottombar extends StatefulWidget {
  
  const Bottombar({ Key? key }) : super(key: key);

  @override
  _BottombarState createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
   int _selectedIndex = 0;  
   final List<Widget>_children = [
     Home(),
     Search(),
     Profile()
   ];
   void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _children[_selectedIndex],
    bottomNavigationBar: BottomAppBar(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.indigo.shade900,
          unselectedItemColor: Colors.grey[700],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          iconSize: 28,
          backgroundColor: Colors.white,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_filled,
          ),label: "Home",
         
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search_sharp,
            ),
          label: "Serch",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person ,
            ),
          label: "Profile",
        ),
      ],
    )
    )
    );
  }
}

