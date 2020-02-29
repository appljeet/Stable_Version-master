import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fbla_app/storage.dart';
import 'package:flutter/material.dart';

import 'bottomNav.dart';
import 'intro.dart';

//void main() {
//  runApp(new MaterialApp(
//    home: new signIn(),
//  ));
//}



class signIn extends StatefulWidget {
  @override
  signInState createState() => new signInState();

}

class signInState extends State<signIn>{

  TextEditingController nameController;
  TextEditingController passwordController;









  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    passwordController = TextEditingController();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[

          Row(
            children: <Widget>[
              SafeArea(
                child: new ButtonTheme(

                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                  height: 40,

                  child: FlatButton(
                      color: Colors.white,
                      child: Container(
                        child:  Icon(Icons.arrow_back_ios,color: Colors.black,size: 30,),
                        alignment: Alignment.centerLeft,
                      ),
                      onPressed: (){
                        Navigator.of(context).pop();
                      }
                  ),

                ),
              )


            ],
          ),



          AspectRatio(
            aspectRatio: 1.75,
            child: Container(
              child: Image.asset('image/newmustanglogo.png'),
            ),
          ),


          Container(
            padding: EdgeInsets.only(top: 10,bottom: 20),
            child: Text('Sign In',style: TextStyle(fontSize: 40),),
          ),


          Container(
            padding: EdgeInsets.only(left: 30,right: 30),
            child: TextField(
              controller: nameController,
              textAlign: TextAlign.left,
              decoration: new InputDecoration(
                  hoverColor: Colors.orange,
                  focusColor: Colors.orange,
                  prefixIcon: Icon(Icons.person),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "Full Name",
                  fillColor: Colors.white70),
            ),
          ),





          Container(
            padding: EdgeInsets.only(left: 30,right: 30, top: 30,bottom: 40),
            child: TextField(
              controller: passwordController,
              style: new TextStyle(color: Colors.deepOrange),
              cursorColor: Colors.deepOrange,
              textAlign: TextAlign.left,
              decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(30.0),),
                  ),

                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "Password",
                  fillColor: Colors.white70),
            ),
          ),


          Container(

            height: 55.0,
            child: RaisedButton(
              onPressed: () {


                String password;

                Firestore.instance.collection('users').document(nameController.text)
                    .get().then((DocumentSnapshot) {


                  if (DocumentSnapshot.exists) {
                    password = DocumentSnapshot.data['password'].toString();

                    if(passwordController.text == password){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => bottomNavState()),);
                    }

                  } else {
                    //message that tells them to try again
                  }




                }
                );

//                if(nameController.text == readName() && passwordController.text == readPassword()){
//
//                  print(nameController.text);
//                  print(passwordController.text);

//
//                }

              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
              padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  //TODO: Add gradient colors here
                    gradient: LinearGradient(colors: [Color.fromRGBO(29, 50, 81, 1), Color.fromRGBO(252, 66, 30, 1)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(30.0)
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text(
                    "Proceed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),
                  ),
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }


}