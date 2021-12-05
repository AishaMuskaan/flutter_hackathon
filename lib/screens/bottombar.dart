import 'package:flutter/material.dart';
import 'package:mini_hackathon/screens/home/home.dart';
import 'package:mini_hackathon/screens/profile.dart';
import 'package:mini_hackathon/screens/search.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({ Key? key }) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const Home()));
      } else if(_selectedIndex == 1){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Search()));
      } else if(_selectedIndex == 2){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Profile()));
      }
    });  
  }  
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red.shade500,
          unselectedItemColor: Colors.grey[700],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          iconSize: 28,
          backgroundColor: Colors.white,
      items : const [
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
    );
  }
}