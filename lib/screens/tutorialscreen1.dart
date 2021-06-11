import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/tutorialscreen2.dart';


class TutorialScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            SizedBox(height: 50,),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                //color: Colors.lightBlue,
                ),
              child: Image.asset("assets/image1.jpg"),
              ),
              

            // SizedBox(
            //   height: 300,
            // ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Text(
                "News everywhere",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5,),
            Text("It's important that we have news everywhere. It's critical to know its authenticity",style: TextStyle(color: Colors.grey),),

            SizedBox(height: 50,),

            SizedBox(
              height: 50,

              child: RaisedButton(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.yellow[700],
                onPressed: (){

                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TutorialScreen2()));

                },
                child: Text("->",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
