import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';




class test extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<test> {
  CalendarController _controller;
  TextEditingController _eventController;
  Map<DateTime,List<dynamic>> _events;
  List<dynamic> _selectedEvents;


  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
    _eventController = TextEditingController();
    _events = {
      DateTime (2020, 1, 8): ['Adviser News Submissions Due to lmartin@cafbla.org'],
      DateTime (2020, 1, 10): ['Adviser News Published and Emailed'],
      DateTime (2020, 1, 24): ['Membership and Dues Received DEADLINE for Section Conference and Competitive Events','Section Conferences - Skill Tests Completed Online SUBMITTED DEADLINE','Section Conferences Registration CLOSES'],
      DateTime (2020, 1, 31): ['Adviser News Submissions Due to lmartin@cafbla.org'],
      DateTime (2020, 2, 1): ['National Career and Technical Education Month'],
      DateTime (2020, 2, 2): ['National FBLA-PBL Week','National Share Your FBLA-PBL Story Day','National FBLA Spring Stock Market Game BEGINS'],
      DateTime (2020, 2, 3): ['National Career and Technical Education Month', 'National FBLA Lifesmarts Spring Competition BEGINS','National FBLA Virtual Business Finance Spring Challenge Competitive Event BEGINS', 'National FBLA Webinar: National Presidents Forum Time TBA'],
      DateTime (2020, 2, 4): ['National Career and Technical Education Month', 'National FBLA Each One Reach One Day'],
      DateTime (2020, 2, 5): ['National Career and Technical Education Month', 'National FBLA Adviser Appreciation Day', 'National FBLA Professional Attire Day'],
      DateTime (2020, 2, 6): ['National Career and Technical Education Month', 'National Career Awareness Day'],
      DateTime (2020, 2, 7): ['National Career and Technical Education Month', 'National FBLA-PBL Week', 'National FBLA-PBL Spirit Day'],
      DateTime (2020, 2, 8): ['National Career and Technical Education Month', 'National FBLA-PBL Week', 'Bay, Central, Inland, and Northern Section Leadership Conference', 'National FBLA Community Service Day'],
      DateTime (2020, 2, 9): ['National Career and Technical Education Month'],
      DateTime (2020, 2, 10): ['National Career and Technical Education Month','SLC Guide Posted on Web Site Under Conferences - SLC'],
      DateTime (2020, 2, 11): ['National Career and Technical Education Month'],
      DateTime (2020, 2, 12): ['National Career and Technical Education Month', 'Adviser News Published and Emailed'],
      DateTime (2020, 2, 13): ['National Career and Technical Education Month'],
      DateTime (2020, 2, 14): ['National Career and Technical Education Month', 'CBEA, Redondo Beach, CA'],
      DateTime (2020, 2, 15): ['CBEA, Redondo Beach, CA'],
      DateTime (2020, 2, 16): ['CBEA, Redondo Beach, CA'],
      DateTime (2020, 2, 17): ['CBEA, Redondo Beach, CA'],
      DateTime (2020, 2, 17): ['Professional Membership Registration & Dues Paid in National System for CA State Project Recognition'],
      DateTime (2020, 2, 22): ['Gold Coast and Southern Section Leadership Conference'],
      DateTime (2020, 2, 28): ['Adviser News Submissions Due to lmartin@cafbla.org','National FBLA LifeSmarts Spring Competition ENDS','National FBLA Virtual Business Finance Spring Challenge Competitive Event ENDS','National FBLA Virtual Business Management Spring Challenge Competitive Event ENDS','National Officer Applications Due for CA FBLA Approval','SLC Pre-Judged Events - Competitors Registered and Materials SUBMITTED','SLC Skill Events School Site Testing Form REQUEST & Competitors REGISTERED DEADLINE','State Projects - Individual Projects Must be APPROVED by Adviser in Badging System'],
      DateTime (2020, 2, 29): ['National Career and Technical Education Month'],
      DateTime (2020, 3, 1): ['CA Financial Literacy Webcast Contest - Link SUBMISSION DEADLINE','Membership Registration & Payment Received Deadline for SLC and NLC Eligibility','National FBLA Action Awareness ENDS', 'National FBLA Community Service Awards RECEIPT DEADLINE', 'National FBLA Individual BAA Entries: Future, Business, & Leader SUBMITTED'],
      DateTime (2020, 3, 2): ['National FBLA Spring Stock Market Game Registration DEADLINE'],
      DateTime (2020, 3, 3): ['Annual Local Chapter Adviser Award Entry Form SUBMITTED', 'Chapter BAA Final Chapter POW Form SUBMITTED to Section Directors', 'L. Byram Bates Memorial Scholarship Applications SUBMITTED', 'SLC Chapter Competitive Events SUBMITTED and Competitors REGISTERED', 'SLC Individual Interview Event Materials SUBMITTED and Competitors REGISTERED', 'Whos Who Entry Form SUBMITTED'],
      DateTime (2020, 3, 6): ['Adviser News Published and Emailed', 'State Officer Applications EMAILED DEADLINE', 'State Projects - Chapter Projects Must Be SUBMITTED in Badging System for State Approval'],
      DateTime (2020, 3, 12): ['State Officer Executive Board Meeting'],
      DateTime (2020, 3, 13): ['State Officer Executive Board Meeting', 'State Chapter Projects Needing Correction Must Be RESUBMITTED in Badging System for State Approval', 'State Management Team Meeting', 'SLC Online Conference Regular Rate Registration ENDS'],
      DateTime (2020, 3, 20): ['SLC Completed Skill School-Site Online Tests SUBMITTED', 'SLC Hotel Reservations Ontario RECEIVED', 'SLC Online Late Conference Registration ENDS'],
      DateTime (2020, 3, 27): ['Adviser News Submissions Due to lmartin@cafbla.org'],
      DateTime (2020, 4, 1): ['National FBLA 100 Percent Class Participation - RECEIPT DEADLINE', 'National FBLA Bylaws Amendment - RECEIPT DEADLINE', 'National FBLA Chapter, State, and National Membership Recognition Awards - RECEIPT DEADLINE', 'National FBLA Distinguished Business Leader Scholarship - RECEIPT DEADLINE', 'National FBLA Membership Achievement Award - RECEIPT DEADLINE', 'National FBLA Membership Madness RECEIPT DEADLINE', 'National FBLA Outstanding Chapter - RECEIPT DEADLINE'],
      DateTime (2020, 4, 3): ['Adviser News Published and Emailed'],
      DateTime (2020, 4, 7): ['NBEA Convention in Boston, MA'],
      DateTime (2020, 4, 8): ['NBEA Convention in Boston, MA'],
      DateTime (2020, 4, 9): ['NBEA Convention in Boston, MA'],
      DateTime (2020, 4, 10): ['NBEA Convention in Boston, MA'],
      DateTime (2020, 4, 11): ['NBEA Convention in Boston, MA'],
      DateTime (2020, 4, 23): ['2020 SLC in Ontario, CA'],
      DateTime (2020, 4, 24): ['2020 SLC in Ontario, CA', 'Adviser News Submissions Due to lmartin@cafbla.org', 'National FBLA Spring Stock Market Game ENDS'],
      DateTime (2020, 4, 25): ['2020 SLC in Ontario, CA', 'CA FBLA Industry Board of Directors Meeting Ontario, CA', 'CAP Committee Meeting at SLC', 'National FBLA BAA America Level SUBMITTED', 'National FBLA CSA Achievement Award - RECEIPT DEADLINE'],
      DateTime (2020, 4, 25): ['NLC Qualifiers Meeting'],
      DateTime (2020, 4, 26): ['2020 SLC in Ontario, CA'],
      DateTime (2020, 4, 27): ['NLC Qualifiers Event Verification Spreadsheet Sent to Advisers for Verification of NLC Commitment'],
      DateTime (2020, 4, 30): ['National FBLA Professional Membership Recognition Awards - RECEIPT DEADLINE', 'NLC Verification Spreadsheet - SUBMISSION DEADLINE to Nancy Sansot via Email'],
      DateTime (2020, 5, 1): ['Adviser News Published and Emailed'],
      DateTime (2020, 5, 5): ['NLC Registered Event Receipt Verification by Chapter Advisers of Qualified Members Attending NLC'],
      DateTime (2020, 5, 6): ['NLC Registered Event Receipt Verification by Chapter Advisers of Qualified Members Attending NLC'],
      DateTime (2020, 5, 7): ['NLC Registered Event Receipt Verification by Chapter Advisers of Qualified Members Attending NLC'],
      DateTime (2020, 5, 8): ['NLC Event Registrations - Last Day to Make Changes', 'NLC Intern Application - RECEIPT DEADLINE'],
      DateTime (2020, 5, 14): ['State Officer Executive Board Meeting Sacramento, CA'],
      DateTime (2020, 5, 15): ['State Officer Executive Board Meeting Sacramento, CA', 'National Officer Candidate Application - RECEIPT DEADLINE must be submitted first to state by Mar. 3', 'NLC State Chapter Voting Delegates - RECEIPT DEADLINE', 'State Management Team Meeting Sacramento, CA'],
      DateTime (2020, 5, 16): ['CA FBLA Industry Board of Directors Meeting Sacramento, CA'],
      DateTime (2020, 5, 29): ['Adviser News Submissions Due to lmartin@cafbla.org'],
      DateTime (2020, 6, 5): ['Adviser News Published and Emailed'],
      DateTime (2020, 6, 9): ['NLC Local Chapter Voting Delegates - Registration Deadline'],
      DateTime (2020, 6, 19): ['State Leadership Summit Location TBA'],
      DateTime (2020, 6, 20): ['State Leadership Summit Location TBA'],
      DateTime (2020, 6, 26): ['Adviser News Submissions Due to lmartin@cafbla.org'],
      DateTime (2020, 6, 28): ['Institute for Leaders Salt Lake City, UT'],
      DateTime (2020, 6, 29): ['Institute for Leaders Salt Lake City, UT'],
      DateTime (2020, 6, 29): ['2020 NLC Salt Lake City, UT'],
      DateTime (2020, 6, 30): ['2020 NLC Salt Lake City, UT'],
      DateTime (2020, 7, 1): ['2020 NLC Salt Lake City, UT'],
      DateTime (2020, 7, 2): ['2020 NLC Salt Lake City, UT'],

    };


    _selectedEvents = [];
  }



  Map<String,dynamic> encodeMap(Map<DateTime,dynamic> map) {
    Map<String,dynamic> newMap = {};
    map.forEach((key,value) {
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }

  Map<DateTime,dynamic> decodeMap(Map<String,dynamic> map) {
    Map<DateTime,dynamic> newMap = {};
    map.forEach((key,value) {
      newMap[DateTime.parse(key)] = map[key];
    });
    return newMap;
  }

  @override
  Widget build(BuildContext context) {

            return Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              TableCalendar(
              events: _events,
              initialCalendarFormat: CalendarFormat.week,
              calendarStyle: CalendarStyle(
                  canEventMarkersOverflow: true,
                  todayColor: Colors.orange,
                  selectedColor: Theme.of(context).primaryColor,
                  todayStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white)),
              headerStyle: HeaderStyle(
                centerHeaderTitle: true,
                formatButtonDecoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                formatButtonTextStyle: TextStyle(color: Colors.white),
                formatButtonShowsNext: false,
              ),
              startingDayOfWeek: StartingDayOfWeek.monday,

              onDaySelected: (date, events) {


                setState(() {

                  _selectedEvents = events;

                  });
              },

              builders: CalendarBuilders(
                selectedDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
                todayDayBuilder: (context, date, events) => Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(color: Colors.white),
                    )),
              ),
              calendarController: _controller,
            ),


              Expanded(
                child: _buildEventList()
              ),

              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: _showAddDialog,
              ),


    ],
    );

  }


  Widget _buildEventList() {
    return ListView(
      children: _selectedEvents
          .map((event) => Container(
        decoration: BoxDecoration(
          border: Border.all(width: 0.8),
          borderRadius: BorderRadius.circular(12.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: ListTile(
          title: Text(event.toString()),
          onTap: () => print('$event tapped!'),
        ),
      ))
          .toList(),
    );
  }




  _showAddDialog() {


    String formattedDate = DateFormat('MMMM dd').format(_controller.selectedDay);


    showDialog(

        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.black,
          title: Text('Add a new event for ' + formattedDate, style: TextStyle(color: Colors.white),),
          content: TextField(
              style: new TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            controller: _eventController,
              decoration: InputDecoration(hintText: "Name of Event",hintStyle: TextStyle(color: Colors.white70),fillColor: Colors.white,focusColor: Colors.white,hoverColor: Colors.white, enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),focusedBorder:UnderlineInputBorder(borderSide: BorderSide(color: Colors.orange)) )
          ),
          actions: <Widget>[

            new FlatButton(
              child: new Text('CANCEL', style: TextStyle(color: Colors.redAccent),),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),

            FlatButton(
              child: Text("SAVE",style: TextStyle(color: Colors.blue)),
              onPressed: (){
                if(_eventController.text.isEmpty) return;
                setState(() {
                  if(_events[_controller.selectedDay] != null) {
                    _events[_controller.selectedDay].add(_eventController.text);
                  }else{
                    _events[_controller.selectedDay] = [_eventController.text];
                  }
                  _eventController.clear();
                  Navigator.pop(context);
                });
              },
            )
          ],
        ),
    );
  }


}