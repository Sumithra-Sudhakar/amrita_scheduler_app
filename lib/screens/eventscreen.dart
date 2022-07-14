import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:scheduler_app/screens/request_meeting_intro.dart';
import 'package:scheduler_app/utils/colors.dart' as colors;
import 'package:scheduler_app/widgets/custom_sliver_widget.dart';

class EventScreen extends StatefulWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  State<EventScreen> createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: CustomSliverView(
        columnList: [
Row(
  children: [
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "WELCOME!",
              style: GoogleFonts.raleway(
                  color: colors.primarytextcolor,
                  fontSize: 20,
                   ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            "SUMITHRA SUDHAKAR",
            style: GoogleFonts.raleway(
                color: colors.primarytextcolor,
                fontSize: 22,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    ),
    Spacer(),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton.icon(
        icon: Icon(Icons.add, color: colors.buttontextcolor,),
        label: Text(""),
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) {
                return RequestMeeting();
              }));
        },
      style: ElevatedButton.styleFrom(
      primary: colors.primarybuttoncolor,
      padding: const EdgeInsets.fromLTRB(10, 20, 5, 20),
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10))),

        ),
    ),

  ],
),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text("UPCOMING",   style: GoogleFonts.raleway(
                  color: colors.primarytextcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),),
            ),
          )
        ],
      ),
    );
  }
}
