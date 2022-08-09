import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduler_app/screens/loadingscreen.dart';
import 'package:scheduler_app/utils/colors.dart' as colors;
import 'package:scheduler_app/widgets/custom_sliver_widget.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: CustomSliverView(
        columnList: [
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Container(height: 100,
            width: 100,
            color: colors.primaryTextColor,),
          Expanded(flex: 1, child: Container()),
          Expanded(flex: 1,child: Text(
            "Scheduler",
            style: GoogleFonts.raleway(
                color: colors.primaryTextColor,
                fontSize: 40,
                fontWeight: FontWeight.w600),
          ),),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "The one stop scheduling solutions for all Amritians",
                style: GoogleFonts.raleway(
                    color: colors.primaryTextColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(flex: 2, child: Container()),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) {
                    return const LoadingScreen();
                  }));
            },
            style: ElevatedButton.styleFrom(
                primary: colors.primaryButtonColor,
                padding: const EdgeInsets.symmetric(
                    horizontal: 50, vertical: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(42))),
            child: Text(
              "Login With O365",
              style: GoogleFonts.raleway(
                  color: colors.buttonTextColor,
                  fontSize: 18,
                  fontFeatures: const <FontFeature>[FontFeature.enable('pwid')],
                  fontWeight: FontWeight.w600),
            ),
          ),
      Expanded(flex: 2, child: Container())
        ],
      ),
    );
  }
}
