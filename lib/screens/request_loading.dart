import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduler_app/screens/request_meeting.dart';
import 'package:scheduler_app/utils/colors.dart' as colors;
import 'package:scheduler_app/widgets/custom_sliver_widget.dart';

class RequestLoading extends StatelessWidget {
  const RequestLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Timer(
        Duration(seconds: 3),
            () =>
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => RequestMeetingMain())));

    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: CustomSliverView(
        columnList: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 100, 10, 50),
            child: Container(
              height: 356,
              width: 259,
              color: colors.primarytextcolor,
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(10, 100, 10, 50),
            child: Text(
              "Please wait while we find slots for you to request!",
              style: GoogleFonts.raleway(
                  color: colors.primarytextcolor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

