import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fbla_app/bottomNav.dart';
import 'package:worm_indicator/shape.dart';
import 'package:worm_indicator/worm_indicator.dart';

import 'intro.dart';

//void main() {
//  runApp(new MaterialApp(
//    home: new interestForm(),
//  ));
//}


class interestForm extends StatelessWidget{

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
            aspectRatio: 2.4,
            child: Container(
              child: Image.asset('image/newmustanglogo.png'),
            ),
          ),


          Container(
            padding: EdgeInsets.only(top: 20,bottom: 20),
            child: Text('FBLA Interest Form',style: TextStyle(fontSize: 40),),
          ),


          Container(
            padding: EdgeInsets.only(left: 30,right: 30),
            child: TextField(
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
                  hintText: "First Name",
                  fillColor: Colors.white70),
            ),
          ),


          Container(
            padding: EdgeInsets.only(left: 30,right: 30, top: 30),
            child: TextField(
              textAlign: TextAlign.left,
              decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
                    ),
                  ),
                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "Last Name",
                  fillColor: Colors.white70),
            ),
          ),


          Container(
            padding: EdgeInsets.only(left: 30,right: 30, top: 30,bottom: 30),
            child: TextField(
              style: new TextStyle(color: Colors.deepOrange),
              cursorColor: Colors.deepOrange,
              textAlign: TextAlign.left,
              decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.school),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(30.0),),
                  ),

                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "Grade Level",
                  fillColor: Colors.white70),
            ),
          ),

          Container(
            padding: EdgeInsets.only(left: 30,right: 30,bottom: 30),
            child: TextField(
              style: new TextStyle(color: Colors.deepOrange),
              cursorColor: Colors.deepOrange,
              textAlign: TextAlign.left,
              decoration: new InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  border: new OutlineInputBorder(
                    borderRadius: const BorderRadius.all(const Radius.circular(30.0),),
                  ),

                  filled: true,
                  hintStyle: new TextStyle(color: Colors.grey[800]),
                  hintText: "Phone Number",
                  fillColor: Colors.white70),
            ),
          ),



          Container(

            height: 55.0,
            child: RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => bottomNavState()),);

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
                    "Submit",
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