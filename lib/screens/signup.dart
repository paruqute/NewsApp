

import 'package:flutter/material.dart';

import 'login.dart';

class SignUpScreen extends StatelessWidget {

  TextEditingController name=TextEditingController();
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

              SizedBox(height: 30,),
              
              SizedBox(
                height: 50,

                child: RaisedButton(

                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                  ),
                  color: Colors.yellow[700],
                  onPressed: (){
                       Navigator.pop(context);
                    // var getName=name.text;
                    // var getEmail=email.text;
                    // var getPassword=pass.text;
                    //
                    // print(getName);
                    // print(getEmail);
                    // print(getPassword);

                  },
                  child: Text("<",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20
                    ),
                  ),
                ),
              ),

              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 150.0),
                child: Text("Sign up",style:
                TextStyle(fontSize: 50,fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 5,),
              Text("You have chance to create new account if you really want to.",style: TextStyle(color: Colors.grey),),

              SizedBox(height: 20,),

              TextField(
                controller: name,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline, size: 25,),
                    hintText: "Full Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    )
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                controller: email,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined, size: 25,),
                    hintText: "Email address",
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
                    prefixIcon: Icon(Icons.lock_outlined, size: 25,),
                    hintText: "Password",
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

                    var getName=name.text;
                    var getEmail=email.text;
                    var getPassword=pass.text;

                    print(getName);
                    print(getEmail);
                    print(getPassword);

                  },
                  child: Text("Sign up",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                      ),
                  ),
                ),
              ),
              SizedBox(height: 30,),

              Row(
                children: [
                  Text("Already have account? "),
                  InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LogInScreen()));
                      },
                      child: Text("Go here",style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),)),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

