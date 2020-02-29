
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class bugReport extends StatelessWidget{





  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[

        Scaffold(
          backgroundColor: Colors.white,
        ),

        Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('image/messageBackground.png'), fit: BoxFit.cover)),
        ),


        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Row(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Icon(Icons.receipt),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text('Competitive Event Form'),
                  )
                ],
              ),


              Container(
                height: 350,
                width: 350,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,

                       // has the effect of extending the shadow

                    )
                  ],
                ),
              )






            ],
          ),
        )




      ],
    );

  }

}