import 'package:flutter/material.dart';

import 'login.dart';

class TutorialScreen3 extends StatelessWidget {
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
              child: Image.asset("assets/image3.jpg"),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 250.0),
              child: Text(
                "WELCOME",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50.0),
              child: Text(
                "Absolute pleasure to have you",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Colors.black,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogInScreen()));
                },
                child: Text(
                  "Get Started  >",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
