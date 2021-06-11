

import 'package:flutter/material.dart';

import 'tutorialscreen3.dart';

class TutorialScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            // SizedBox(
            //   height: 300,
            // ),
            SizedBox(height: 50,),
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                //color: Colors.lightBlue,
              ),
              child: Image.asset("assets/image2.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40.0),
              child: Text(
                "It's fresh and thrilling",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5,),
            Text("It's very important to know that the news you \nconsume is fresh and authentic",style: TextStyle(color: Colors.grey),),

            SizedBox(height: 50,),

            SizedBox(
              height: 50,

              child: RaisedButton(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.yellow[700],
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TutorialScreen3()));

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
