

import 'package:fbla_app/storage.dart';
import 'package:fbla_app/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class supportState extends StatefulWidget{

  @override
  support createState() => support();


}




class support extends State<supportState>{




  var fontWeight1 = FontWeight.bold;

  var fontWeight2 = FontWeight.normal;

  var fontWeight3 = FontWeight.normal;

  var fontWeight4 = FontWeight.normal;


  @override
  Widget build(BuildContext context) {


    int currentPage;


    final controller = PageController(
      initialPage: 0,
    );





    var pageView = PageView(
        controller: controller,
        children: <Widget>[
          qAndA(),
          contactUs(),
          socialMedia(),
          socialMedia(),

        ],
        onPageChanged: (int page){
          currentPage = page;

          if(page==0) {
            setState(() {
              fontWeight1 = FontWeight.bold;
              fontWeight2 = FontWeight.normal;
              fontWeight3 = FontWeight.normal;
              fontWeight4 = FontWeight.normal;
            });
          }

          if(page==1) {
            setState(() {
              fontWeight1 = FontWeight.normal;
              fontWeight2 = FontWeight.bold;
              fontWeight3 = FontWeight.normal;
              fontWeight4 = FontWeight.normal;
            });
          }

          if(page==2) {
            setState(() {
              fontWeight1 = FontWeight.normal;
              fontWeight2 = FontWeight.normal;
              fontWeight3 = FontWeight.bold;
              fontWeight4 = FontWeight.normal;
            });
          }

          if(page==3) {
            setState(() {
              fontWeight1 = FontWeight.normal;
              fontWeight2 = FontWeight.normal;
              fontWeight3 = FontWeight.normal;
              fontWeight4 = FontWeight.bold;
            });
          }


        }

    );






    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(

        children: <Widget>[

          SafeArea(
              child: Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(top: 10,left: 20),
                child: Text('Abhijit Singh',style: TextStyle(fontSize: 30,color: Colors.deepOrange),),

              )
          ),

          AspectRatio(
              aspectRatio: 13/2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: <Widget>[
                  Text('Q&A',style: TextStyle(fontSize: 17,fontWeight: fontWeight1),),
                  Text('Contact Us',style: TextStyle(fontSize: 17,fontWeight: fontWeight2)),
                  Text('Report a Bug',style: TextStyle(fontSize: 17,fontWeight: fontWeight3)),
                  Text('Social Media',style: TextStyle(fontSize: 17,fontWeight: fontWeight4)),

                ],

              )
          ),

          Expanded(
            child: pageView,
          )


        ],

      ),
    );
  }

}

Widget qAndA() {

  return ListView(
    children: <Widget>[

      SafeArea(
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 5,left: 60, bottom: 20),
          child: Text('Questions and Answers',style: TextStyle(fontSize: 25, color: Colors.black, fontWeight: FontWeight.bold),),),

      ),


      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 20),
            child:Text('Q: Can I create an account even if I am not an FBLA member?', style: TextStyle(fontSize: 15, color: Colors.deepOrange, fontWeight: FontWeight.bold ),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10,left: 20, bottom: 20),
            child:Text('A: You may create an account however you will not be granted permission to all sections.', style: TextStyle(fontSize: 15, color: Colors.black, ),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 20),
            child:Text('Q: What if I forget my account information?', style: TextStyle(fontSize: 15, color: Colors.deepOrange, fontWeight: FontWeight.bold ),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10,left: 20, bottom: 20),
            child:Text('A: If account information is forgotten, feel free to reach out to your local officers and advisers for further information on how to retrieve access to your account.', style: TextStyle(fontSize: 15, color: Colors.black, ),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 20),
            child:Text('Q: How do I become an FBLA Member?', style: TextStyle(fontSize: 15, color: Colors.deepOrange,fontWeight: FontWeight.bold ),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10,left: 20, bottom: 20),
            child:Text('A: You can become an FBLA member by paying your membership dues through depositing 20 dollars to your student store and bringing the receipt to your chapter adviser for verification. Once you bring that receipt to your adviser, a code will be given to you by them which grants you access to the member section of Stable.', style: TextStyle(fontSize: 15, color: Colors.black, ),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 20),
            child:Text('Q: Once I am a member, what features do I have access to?', style: TextStyle(fontSize: 15, color: Colors.deepOrange, fontWeight: FontWeight.bold),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10,left: 20, bottom: 20),
            child:Text('A: As a Member, you will be given access to the Dashboard, Meeting, and Support Screens.', style: TextStyle(fontSize: 15, color: Colors.black, ),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 20),
            child:Text('Q: How do I sign up for Competitive Events from this app?', style: TextStyle(fontSize: 15, color: Colors.deepOrange, fontWeight: FontWeight.bold),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10,left: 20, bottom: 20),
            child:Text('A: As a member of Stable, you can sign up for Competitive Events simply by clicking the Sign Up Icon which is located in the Meeting tab of the app.', style: TextStyle(fontSize: 15, color: Colors.black, ),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 20),
            child:Text('Q: Can I add my own events in the Calendar?', style: TextStyle(fontSize: 15, color: Colors.deepOrange, fontWeight: FontWeight.bold),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10,left: 20, bottom: 20),
            child:Text('A: Yes! Here at Stable, we allow our Mustangs complete freedom when it comes to adding events as we always strive to cater to the needs of our members.', style: TextStyle(fontSize: 15, color: Colors.black, ),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 20),
            child:Text('Q: Can I set notifications and reminders on events in the Calendar?', style: TextStyle(fontSize: 15, color: Colors.deepOrange, fontWeight: FontWeight.bold),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10,left: 20, bottom: 20),
            child:Text('A: As a fairly new application, Stable will be pushing out more updates in which features like push-notifications and event reminders will take place as we gear up for our next update.', style: TextStyle(fontSize: 15, color: Colors.black, ),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 20),
            child:Text('Q: Can this application track my attendance at a local chapter meeting?', style: TextStyle(fontSize: 15, color: Colors.deepOrange, fontWeight: FontWeight.bold),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 10,left: 20, bottom: 40),
            child:Text('A: Every members attendance can be tracked through this application once a member checks into a meeting using the "Check In" button located at the bottom of the Meeting screen.', style: TextStyle(fontSize: 15, color: Colors.black, ),),

          )
      ),


      SizedBox(
        height: 10,
      ),

      //TODO: Add remaining text, style the font for size, style the font for color
    ],
  );
}

Widget contactUs() {

  return ListView(
    children: <Widget>[

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 0,left: 40),
            child: Text('ERHS FBLA App Developers',style: TextStyle(fontSize: 25, color: Colors.deepOrange, fontWeight: FontWeight.bold)),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 40),
            child:Text('Abhijit Singh', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 5,left: 40),
            child: Text('Email: abhijitsingh.student@gmail.com',style: TextStyle(fontSize: 15),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 20,left: 40),
            child:Text('Yash Sharma', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),

          )
      ),

      SafeArea(
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(top: 5,left: 40),
            child: Text('Email: ysharma3002@gmail.com',style: TextStyle(fontSize: 15),),

          )
      ),

      SafeArea(
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(top: 25,left: 40),
          child: Text('ERHS FBLA Chapter Officers',style: TextStyle(fontSize: 25, color: Colors.deepOrange, fontWeight: FontWeight.bold),),),

      ),

      SizedBox(
        height: 25,
      ),
      //add spacing

      //image and name of officer



      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/image.png',scale: 4.5,),
            padding: EdgeInsets.only(left: 5, bottom: 20),
          ),

          Column(
              children: <Widget>[
                Container(
                  child:Text('Rui Song', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 20, bottom: 10),

                ),
                Container(
                  child:Text('VP of Competitive Events', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(left: 5, right: 20, bottom: 10),

                ),
              ]
          ),

        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/allan.png',scale: 4.5,),
            padding: EdgeInsets.only(left: 0, right: 0, bottom: 20),
          ),

          Column(
              children: <Widget>[
                Container(
                  child:Text('Allan Chen', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 50, right: 58, bottom: 10),

                ),
                Container(
                  child:Text('VP of Projects', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(left: 5, right: 20, bottom: 10),

                ),
              ]
          ),

        ],
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/manal.png',scale: 4.5,),
            padding: EdgeInsets.only(left: 33, right:35,bottom: 20),
          ),

          Container(
            child: Column(
                children: <Widget>[
                  Container(
                    child:Text('Manal Ali', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                    padding: EdgeInsets.only(left: 5, right: 20, bottom: 10),

                  ),
                  Container(
                    child:Text('Director of Membership', style: TextStyle(fontSize: 15, color: Colors.black,),),
                    padding: EdgeInsets.only(left: 5, right: 20, bottom: 10),

                  ),
                ]
            ),
            padding: EdgeInsets.only(right:33),
          )

        ],
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/thomas.png',scale: 3.5,),
            padding: EdgeInsets.only(left: 12, right: 20, bottom: 20),
          ),

          Column(
              children: <Widget>[
                Container(
                  child:Text('Thomas Rife', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 50, bottom: 10),

                ),
                Container(
                  child:Text('Director of Outreach', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(right: 50, bottom: 10),

                ),
              ]
          ),

        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/sanika.png',scale: 2,),
            padding: EdgeInsets.only(left: 10, right: 20, bottom: 20),
          ),

          Column(
              children: <Widget>[
                Container(
                  child:Text('Sanika Subhedar', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 50, bottom: 10),

                ),
                Container(
                  child:Text('Co-President', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(right: 50, bottom: 10),

                ),
              ]
          ),

        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/peter.png',scale: 3.3,),
            padding: EdgeInsets.only(left: 10, right: 20, bottom: 20),
          ),
          Column(
              children: <Widget>[
                Container(
                  child:Text('Peter Chang', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 50, bottom: 10),

                ),
                Container(
                  child:Text('Director of Outreach', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(right: 50, bottom: 10),

                ),
              ]
          ),

        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/maham.png',scale: 1.9,),
            padding: EdgeInsets.only(left: 27, right: 20, bottom: 20),
          ),
          Column(
              children: <Widget>[
                Container(
                  child:Text('Maham Mobin', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 50, bottom: 10),

                ),
                Container(
                  child:Text('Executive Vice President', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(right: 50, bottom: 10),

                ),
              ]
          ),

        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Image.asset('image/joyce.png',scale: 7.2,),
            padding: EdgeInsets.only(left: 37, right: 10, bottom: 25),
          ),
          Column(
              children: <Widget>[
                Container(
                  child:Text('Joyce He', style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),),
                  padding: EdgeInsets.only(left: 5, right: 50, bottom: 10),

                ),
                Container(
                  child:Text('Director of Membership', style: TextStyle(fontSize: 15, color: Colors.black,),),
                  padding: EdgeInsets.only(right: 65, left: 20, bottom: 10),

                ),
              ]
          ),

        ],
      ),

      //add more people


      //add spacer


      //title

      Center(
        child: Text('Helpful Links',style: TextStyle(fontSize: 25, color: Colors.deepOrange, fontWeight: FontWeight.bold),),
      ),

      //decorated link
      Container(
          padding: EdgeInsets.only(top: 50,left: 50,right: 50, bottom: 20),

          child: GestureDetector(
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(40.0),
              child: Image.asset('image/BAA.png',scale: 9,),
            ),
            onTap: (){
              //TODO: Go to web page
            },
          )
      ),


      //name of link
      Center(
        child: Text('Business Achievement Awards',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold ),),
      ),

      //add more decorated links and name of link

      Container(
          padding: EdgeInsets.only(top: 50,left: 50,right: 50, bottom: 20),

          child: GestureDetector(
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(40.0),
              child: Image.asset('image/CSA.png',scale: 9,),
            ),
            onTap: (){
              //TODO: Go to web page
            },
          )
      ),


      //name of link
      Center(
        child: Text('Community Service Awards',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      Container(
          padding: EdgeInsets.only(top: 50,left: 50,right: 50, bottom: 20),

          child: GestureDetector(
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(40.0),
              child: Image.asset('image/Inland.png',scale: 9,),
            ),
            onTap: (){
              //TODO: Go to web page
            },
          )
      ),


      //name of link
      Center(
        child: Text('Inland Section Website',style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
      ),
      Container(
          padding: EdgeInsets.only(top: 50,left: 50,right: 50, bottom: 20),

          child: GestureDetector(
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(40.0),
              child: Image.asset('image/CAFBLA.png',scale: 9,),
            ),
            onTap: (){
              //TODO: Go to web page
            },
          )
      ),


      //name of link
      Center(
        child: Text('CA FBLA Website',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),
      ),
      Container(
          padding: EdgeInsets.only(top: 50,left: 50,right: 50, bottom: 20),

          child: GestureDetector(
            child: ClipRRect(
              borderRadius: new BorderRadius.circular(40.0),
              child: Image.asset('image/FBLAPBL.png',scale: 9,),
            ),
            onTap: (){
              //TODO: Go to web page
            },
          )
      ),


      //name of link
      Center(
        child: Text('FBLA-PBL Website',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),


      ),
      Container(
        padding: EdgeInsets.only(top: 50,left: 50,right: 50, bottom: 30),

      )
    ],
  );

}




Widget socialMedia(){

  //add urls

  String instaUrl = 'https://www.instagram.com/mustang_developers/';
  String twitterUrl = 'https://twitter.com/mustang_develop';
  String facebookUrl = 'https://www.facebook.com/mustangDevelopers';


  return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          SafeArea(
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 5,left: 100,bottom: 5),
              child: Text('Social Media Links',style: TextStyle(fontSize: 25, color: Colors.deepOrange, fontWeight: FontWeight.bold),),
            ),

          ),

          Center(
            child: Text('*click the images below to visit our social media pages*',style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.bold),),
          ),



          Container(
              padding: EdgeInsets.only(top: 50,left: 50,right: 50, bottom: 20),

              child: GestureDetector(
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(40.0),
                  child: Image.asset('image/Instagram.png',scale: 4,),
                ),
                onTap: (){
                  launchURL(instaUrl);
                },
              )
          ),

          //name of link
          Center(
            child: Text('Instagram',style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
          ),







          Container(
              padding: EdgeInsets.only(top: 50,left: 50,right: 50, bottom: 20),

              child: GestureDetector(
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(40.0),
                  child: Image.asset('image/Twitter.png',scale: 2,),
                ),
                onTap: (){
                  launchURL(twitterUrl);
                },
              )
          ),


          //name of link
          Center(
            child: Text('Twitter',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          Container(
              padding: EdgeInsets.only(top: 50,left: 50,right: 50, bottom: 20),

              child: GestureDetector(
                child: ClipRRect(
                  borderRadius: new BorderRadius.circular(40.0),
                  child: Image.asset('image/Facebook.png',scale: 4,),
                ),
                onTap: (){
                  launchURL(facebookUrl);
                },
              )
          ),


          //name of link
          Center(
            child: Text('Facebook',style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),),


          ),
          Container(
            padding: EdgeInsets.only(top: 50,left: 50,right: 50, bottom: 30),

          ),

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



