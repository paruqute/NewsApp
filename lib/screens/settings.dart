import 'package:flutter/material.dart';


class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  var names = ["Happiness","Sadness"];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          margin: EdgeInsets.all(10),
          child: GridView.builder(
            itemCount: 2,
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
                    child: Text("Settings Page"),
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
