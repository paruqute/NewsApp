import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  var names = ["Genbai Benno"];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(10),
          child: GridView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                  Center(
                    child: Text("Profile Page"),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
