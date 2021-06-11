

import 'package:flutter/material.dart';


import 'screens/splashscreen.dart';

void main()=>runApp(NewsFeedView());

class NewsFeedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        body:SplashScreen(),
      ),
    );
  }
}

