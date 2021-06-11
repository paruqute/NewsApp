

import 'package:flutter/material.dart';

import 'signup.dart';

class LogInScreen extends StatelessWidget {

  TextEditingController email=TextEditingController();
  TextEditingController pass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(15),

          child: Column(
            children: <Widget>[
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(right: 200.0),
                child: Text("Login",style:
                  TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5,),
              Text("You don't think you should login first and behave like human nor robot.",style: TextStyle(color: Colors.grey),),

              SizedBox(height: 20,),

              TextField(
                controller: email,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.account_box, color: Colors.deepOrange, size: 30,),
                    labelText: "EmailID",
                    hintText: "Enter the EmailId",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                controller: pass,
                obscureText: true,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock, color: Colors.brown, size: 30,),
                    labelText: "Password",
                    hintText: "Enter the Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
              ),

              SizedBox(height: 20,),

              SizedBox(

                height: 50,
                width: double.infinity,
                child: RaisedButton(

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)
                  ),
                  color: Colors.yellow[700],
                  onPressed: (){

                    var getUsername=email.text;
                    var getPassword=pass.text;

                    print(getUsername);
                    print(getPassword);

                  },
                  child: Text("Sign in",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      )
                  ),
                ),
              ),
              SizedBox(height: 30,),

              Row(
                children: [
                  Text("You are new? "),
                  InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      },
                      child: Text("Create new",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),)),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

