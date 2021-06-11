

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Likes extends StatelessWidget {

  var names=["A","B","C","D","E"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
      child: ListView.builder(
          itemCount: names.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.add,size: 50, color: Colors.blueAccent,),
                title: Text(names[index]),


              ),
            );

          },
    ),
    ),
    );
  }
}
