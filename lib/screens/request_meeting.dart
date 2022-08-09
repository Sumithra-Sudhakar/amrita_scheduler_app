import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:scheduler_app/screens/request_meeting_intro.dart';
import 'package:scheduler_app/utils/colors.dart' as colors;
import 'package:scheduler_app/widgets/custom_sliver_widget.dart';


class RequestMeetingMain extends StatefulWidget {
  const RequestMeetingMain({Key? key}) : super(key: key);

  @override
  State<RequestMeetingMain> createState() => _RequestMeetingMainState();
}

class _RequestMeetingMainState extends State<RequestMeetingMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: CustomSliverView(
        columnList: [
Padding(
  padding: const EdgeInsets.fromLTRB(8, 70, 8, 8),
  child:   Align(
    alignment: Alignment.topLeft,
    child:   Text("Request Meeting", style: GoogleFonts.raleway(
      fontSize: 30,
      fontWeight: FontWeight.w300,
      color: colors.primaryTextColor
    ),),
  ),
),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   Align(
              alignment: Alignment.topLeft,
              child:   Text("Request Now", style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: colors.primaryTextColor
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   Align(
              alignment: Alignment.topLeft,
              child:   Text("If the person is free, a 5 minute slot can  be requested right away", style: GoogleFonts.raleway(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: colors.primaryTextColor
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (BuildContext context) {
                //       return RequestLoading();
                //     }));
              },
              child: Text(
                "REQUEST",
                style: GoogleFonts.raleway(
                    color: colors.buttonTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: colors.primaryButtonColor,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   Align(
              alignment: Alignment.topLeft,
              child:   Text("CHOOSE A SLOT", style: GoogleFonts.raleway(
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  color: colors.primaryTextColor
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:   Align(
              alignment: Alignment.topLeft,
              child:   Text("You can request for a slot upto a week in advance", style: GoogleFonts.raleway(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: colors.primaryTextColor
              ),),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(10, 100, 10, 50),
            child: ElevatedButton(
              onPressed: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (BuildContext context) {
                //       return RequestLoading();
                //     }));
              },
              child: Text(
                "CONTINUE",
                style: GoogleFonts.raleway(
                    color: colors.buttonTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              style: ElevatedButton.styleFrom(
                  primary: colors.primaryButtonColor,
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
