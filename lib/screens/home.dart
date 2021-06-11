import 'package:flutter/material.dart';

import 'bottomnavigationbar.dart';



class Home extends StatelessWidget {
  var names = ["This is a new headline","This is another news headline","This is also another news headline","This gotta be a news"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Text("Home"),
        ),
          
        bottomNavigationBar: BottomNav(),
      ),
    );
  }
}
