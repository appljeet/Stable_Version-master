import 'dart:async';

import 'package:flutter/material.dart';
import 'package:worm_indicator/shape.dart';
import 'package:worm_indicator/worm_indicator.dart';

import 'intro.dart';


class eventOrServiceState extends StatefulWidget{

  @override
  eventOrService createState() => eventOrService();


}



class eventOrService extends State<eventOrServiceState>{

  TextEditingController nameController;




  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
  }




  @override
  Widget build(BuildContext context) {


    final controller = PageController(
      initialPage: 0,
    );



    var pageView = PageView(
        controller: controller,
        children: <Widget>[

          eventForm(),
          serviceForm()

        ],
        onPageChanged: (int page){}
    );




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

          Expanded(
            child: pageView,
          ),

          AspectRatio(
            aspectRatio: 11/2,
            child: Container(
              child: WormIndicator(
                indicatorColor: Colors.red,
                length: 2,
                controller: controller,
                shape: Shape(
                    size: 16,
                    spacing: 8,
                    shape: DotShape.Circle
                ),
              ),
            ),

          )


        ],
      ),
    );
  }




  eventForm(){
    return Stack(
      children: <Widget>[

        Scaffold(
          backgroundColor: Colors.white,
        ),

        Container(
          alignment: Alignment.centerLeft,
          child: Image(
            image: AssetImage('image/messageBackground.png'),
          ),
        ),


        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Row(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    child: Icon(Icons.receipt,color: Colors.white,),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    child: Text('Competitive Event Form', style: TextStyle(fontSize: 20, color: Colors.white),),
                  )
                ],
              ),


              Container(
                color: Colors.white,
                height: 350,
                width: 350,
                child: Column(
                  children: <Widget>[

                    Container(
                      child: Text('Name:',style: TextStyle(fontSize: 17),),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 20, top: 30, bottom: 15),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 30,right: 30),
                      child: TextField(

                        textAlign: TextAlign.left,
                        decoration: new InputDecoration(
                            hoverColor: Colors.orange,
                            focusColor: Colors.orange,

                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey),
                            hintText: "Your Full Name",
                            fillColor: Colors.white70),
                      ),
                    ),


                    Container(
                      child: Text('Competitive Event:',style: TextStyle(fontSize: 17),),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 20, top: 30, bottom: 15),
                    ),


                    Container(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: DropdownButton<String>(
                        hint: Text('Choose an event'),
                        items: <String>['A', 'B', 'C', 'D'].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
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





  serviceForm(){
    return Stack(
      children: <Widget>[

        Scaffold(
          backgroundColor: Colors.white,
        ),

        Container(
          alignment: Alignment.centerLeft,
          child: Image(
            image: AssetImage('image/messageBackground.png'),
          ),
        ),


        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Row(
                children: <Widget>[

                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    child: Icon(Icons.receipt,color: Colors.white,),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    child: Text('Community Service Form', style: TextStyle(fontSize: 20, color: Colors.white),),
                  )
                ],
              ),


              Container(
                color: Colors.white,
                height: 350,
                width: 350,
                child: Column(
                  children: <Widget>[

                    Container(
                      child: Text('Name:',style: TextStyle(fontSize: 17),),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 20, top: 30, bottom: 15),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 30,right: 30),
                      child: TextField(

                        textAlign: TextAlign.left,
                        decoration: new InputDecoration(
                            hoverColor: Colors.orange,
                            focusColor: Colors.orange,

                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(0),
                              ),
                            ),
                            filled: true,
                            hintStyle: new TextStyle(color: Colors.grey),
                            hintText: "Your Full Name",
                            fillColor: Colors.white70),
                      ),
                    ),


                    Container(
                      child: Text('Community Service Form:',style: TextStyle(fontSize: 17),),
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 20, top: 30, bottom: 15),
                    ),


                    Container(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: DropdownButton<String>(
                        hint: Text('Choose an event'),
                        items: <String>['A', 'B', 'C', 'D'].map((String value) {
                          return new DropdownMenuItem<String>(
                            value: value,
                            child: new Text(value),
                          );
                        }).toList(),
                        onChanged: (_) {},
                      ),
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