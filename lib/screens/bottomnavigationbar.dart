


import 'package:flutter/material.dart';
import 'package:news_app/screens/profile.dart';
import 'package:news_app/screens/settings.dart';

import 'home.dart';
import 'likes.dart';


class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _mycurrentIndex=0;
  List mypages=[Home(),Likes(),Profile(),Settings()];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: mypages[_mycurrentIndex],
        bottomNavigationBar: BottomNavigationBar(onTap: (index){
          setState(() {
            _mycurrentIndex=index;
          },);
        },
          backgroundColor: Colors.lightBlue,
          currentIndex: _mycurrentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.lens_outlined),label: "HOME",),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "LIKES"),
            BottomNavigationBarItem(icon: Icon(Icons.lens_outlined),label: "PROFILE"),
            BottomNavigationBarItem(icon: Icon(Icons.lock_outlined),label: "SETTINGS"),
          ],
        ),
      ),
    ),
    );
  }
}


