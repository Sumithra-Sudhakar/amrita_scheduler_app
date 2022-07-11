import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduler_app/screens/loadingscreen.dart';
import 'package:scheduler_app/utils/colors.dart' as colors;
import 'package:scheduler_app/widgets/custom_sliver_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: CustomSliverView(
        columnList: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 100, 10, 50),
            child: Container(
              height: 100,
              width: 100,
              color: colors.primarytextcolor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Scheduler",
              style: GoogleFonts.raleway(
                  color: colors.primarytextcolor,
                  fontSize: 40,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "The one stop scheduling solutions for all Amritians",
              style: GoogleFonts.raleway(
                  color: colors.primarytextcolor,
                  fontSize: 18,
                  fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(10, 270, 10, 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) {
                      return LoadingScreen();
                    }));
              },
              child: Text(
                "Login With Office 365",
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
                      borderRadius: BorderRadius.circular(42))),
            ),
          ),

        ],
      ),
    );
  }
}
