

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduler_app/screens/loadingscreen.dart';
import 'package:scheduler_app/utils/colors.dart' as colors;
import 'package:scheduler_app/widgets/custom_sliver_widget.dart';

import 'eventscreen.dart';

class RequestMeeting extends StatefulWidget {
  const RequestMeeting({Key? key}) : super(key: key);

  @override
  State<RequestMeeting> createState() => _RequestMeetingState();
}

class _RequestMeetingState extends State<RequestMeeting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      appBar: AppBar(
        backgroundColor: colors.scaffoldColor,

        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: colors.primarytextcolor,),
          onPressed: (){Navigator.pop(context);},
        ),
        title: Text("Request Meeting", style: GoogleFonts.raleway(
          color: colors.primarytextcolor,
          fontSize: 25

        ),),
      ),
      body: CustomSliverView(
        columnList: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Choose a Person", style: GoogleFonts.raleway(
                  color: colors.primarytextcolor,
                  fontSize: 20

              ),),
            ),
          ),
          Container(
            height: 63,
            width: 365,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
color: colors.secondarybuttoncolor
            ),

            child: GestureDetector(
              onTap: (){},
              child: Row(
                children: [Spacer(),
                  Icon(Icons.search, color: Color(0xffBBBBBB),),
                  Spacer(

                  ),
                  Text("start typing here...", style: GoogleFonts.raleway(
                    color: Color(0xffBBBBBB),
                    fontSize: 15
                  ),),
                  Spacer(
                    flex: 4,
                  )
                ],
              ) ,
            ),
          ),

          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 80, 15, 20),
              child: Text("HOW DOES IT WORK?", style: GoogleFonts.raleway(
                fontSize: 17,
                color: colors.primarytextcolor
              ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("-When you select a person to meet, the app will  check their Outlook calendar to identify time slots that they’re free in.", textAlign: TextAlign.left,
            style: GoogleFonts.raleway(
                fontSize: 15,
                color: colors.primarytextcolor
            ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("-The list is displayed to you and you can pick a slot that works well with your schedule, and proceed with the appointment. ", textAlign: TextAlign.left,
              style: GoogleFonts.raleway(
                  fontSize: 15,
                  color: colors.primarytextcolor
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text("-Once you’ve requested an appointment, the other person can then either accept / deny / reschedule your request and updates will be relayed to you through notifications.", textAlign: TextAlign.left,
              style: GoogleFonts.raleway(
                  fontSize: 15,
                  color: colors.primarytextcolor
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 100, 10, 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return EventScreen();
                    }));
              },
              child: Text(
                "CONTINUE",
                style: GoogleFonts.raleway(
                    color: colors.buttontextcolor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: colors.primarybuttoncolor,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ],
      ),
    );
  }
}
