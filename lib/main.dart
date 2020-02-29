import 'dart:async';

import 'package:fbla_app/storage.dart';
import 'package:flutter/material.dart';

import 'bottomNav.dart';
import 'intro.dart';



void main() {
  runApp(new MaterialApp(
    home: new splashTimer(),
    routes: <String, WidgetBuilder>{
      '/introState': (BuildContext context) => new introState(),
    },
  ));
}
//hi
class splashTimer extends StatefulWidget {
  @override
  splashScreen createState() => new splashScreen();

}



class splashScreen extends State<splashTimer>{



  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, takeToHome);
  }

  void takeToHome(){

    Navigator.of(context).pushReplacementNamed('/introState');

//    String usedBefore = 'false';
//
//    storage().readUsedBefore().then((String value) {
//      setState(() {
//        usedBefore = value;
//
//        if(usedBefore=='false'){
//          //take to dashboard if first time using
//          storage().storeUsedBefore('true');
//          Navigator.of(context).pushReplacementNamed('/introState');
//
//        }else{
//          //take to dashboard if not first time using
//          Navigator.push(context, MaterialPageRoute(builder: (context) => bottomNavState()),);
//        }
//      });
//    });

  }

  @override
  void initState() {
    super.initState();
    startTime();


  }


  @override
  Widget build(BuildContext context) {






    return new Scaffold(
      backgroundColor: Color.fromARGB(100, 29, 50, 81),
      body: new Center(
        child: Image.asset(
          'image/mustangLogo.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );


  }

}
