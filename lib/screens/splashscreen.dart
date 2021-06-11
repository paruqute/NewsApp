import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/screens/tutorialscreen1.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 4),
            () =>

        {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TutorialScreen1()))
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery
            .of(context)
            .size
            .height,
        width: MediaQuery
            .of(context)
            .size
            .width,
        color: Colors.blueAccent,
        //Image.asset('assets/original.jpg', fit: BoxFit.cover,),
      child: Column(
        children: [
          SizedBox(height: 550,),
          Text("News everywhere!!",style: TextStyle(color: Colors.white),),
        ],
      ),
    );
  }
}