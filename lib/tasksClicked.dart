import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class tasksClicked extends StatelessWidget{



  final String image;
  final String name;
  final String description;
  final String url;


  tasksClicked({Key key, @required this.image, this.name, this.description, this.url}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        backgroundColor: Colors.black,
        body: new ListView(
          children: <Widget>[

            Row(
              children: <Widget>[
                new ButtonTheme(

                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
                  height: 40,

                  child: RaisedButton(
                    color: Colors.black,
                      child: Container(
                        child:  Icon(Icons.arrow_back_ios,color: Colors.white,size: 30,),
                        alignment: Alignment.centerLeft,
                      ),
                      onPressed: (){
                        Navigator.of(context).pop();
                      }
                  ),

                ),


              ],
            ),


            AspectRatio(
              aspectRatio: 13/2,
              child: Container(
                child: Text(name,style: TextStyle(fontSize: 40,color: Colors.deepOrange),),
                alignment: Alignment.center,
              ),
            ),


            AspectRatio(
              aspectRatio: 3/2,
              child: Container(
                padding: EdgeInsets.all(30.0),

                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(40.0),
                  child: Image.asset(image),
                ),
                alignment: Alignment.bottomCenter,
              ),
            ),



            Container(
              alignment: Alignment.center,
              child: InkWell(
                child: Text('*click here to visit FBLA\'s ' + name + ' site*', style: TextStyle(color: Colors.deepOrange),),
                onTap: (){
                  launchURL(url);
                }
              )
            ),



            Container(

              padding: EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: new BorderRadius.circular(40.0),
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  child: new Text(description,style: TextStyle(fontSize: 20,color: Colors.black),textAlign: TextAlign.center,),
                  color: Colors.white,
                ),
              ),
              alignment: Alignment.bottomCenter,
            ),




            IconButton(

              icon: Icon(Icons.calendar_today,color: Colors.white,size: 30,),
              onPressed: () {
                //open calendar page
              },
            ),

            Container(
              padding: EdgeInsets.only(top: 5, bottom: 20),
              alignment: Alignment.center,
              child: Text('Click above to add this to your calendar', style: TextStyle(color: Colors.deepOrange),),
            )



          ],
        )
    );

  }


  launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


}