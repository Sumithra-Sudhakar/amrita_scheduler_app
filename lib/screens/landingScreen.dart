import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduler_app/screens/eventscreen.dart';
import 'package:scheduler_app/utils/colors.dart' as colors;
import 'package:scheduler_app/widgets/custom_sliver_widget.dart';

import 'loadingscreen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  var items = <String>["Choose Visibility", "Public", "Private"];

  String selectval = "Public";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
      body: CustomSliverView(
        columnList: [
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 60, 10, 10),
              child: Text(
                "Preferences",
                style: GoogleFonts.raleway(
                    color: colors.primarytextcolor,
                    fontSize: 30,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
            child: Row(
              children: [
                Text(
                  "Schedule Visiblity",
                  style: GoogleFonts.raleway(
                      color: colors.primarytextcolor,
                      fontSize: 20,
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: colors.secondarybuttoncolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 8.0),
                    child: DropdownButton(
                      underline: Container(),
                      value: selectval,
                      items: [
                        DropdownMenuItem(
                            child: Text(
                              "Public",
                              style: GoogleFonts.raleway(
                                color: colors.buttontextcolor,
                              ),
                            ),
                            value: "Public"),
                        DropdownMenuItem(
                          child: Text(
                            "Private",
                            style: GoogleFonts.raleway(
                              color: colors.buttontextcolor,
                            ),
                          ),
                          value: "Private",
                        )
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectval = value.toString();
                        });
                      },
                    ),
                  ),
                ),
                Spacer()
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Set your availability",
                style: GoogleFonts.raleway(
                    color: colors.primarytextcolor,
                    fontSize: 22,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Tell us when you’re typically available for meetings",
              style: GoogleFonts.raleway(
                color: colors.primarytextcolor,
                fontSize: 18,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Hours",
                style: GoogleFonts.raleway(
                  color: colors.primarytextcolor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Row(
              children: [
                Spacer(),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: colors.secondarybuttoncolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 8.0),
                    child: DropdownButton(
                      underline: Container(),
                      value: selectval,
                      items: [
                        DropdownMenuItem(
                            child: Text(
                              "Public",
                              style: GoogleFonts.raleway(
                                color: colors.buttontextcolor,
                              ),
                            ),
                            value: "Public"),
                        DropdownMenuItem(
                          child: Text(
                            "Private",
                            style: GoogleFonts.raleway(
                              color: colors.buttontextcolor,
                            ),
                          ),
                          value: "Private",
                        )
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectval = value.toString();
                        });
                      },
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: colors.secondarybuttoncolor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 8.0),
                    child: DropdownButton(
                      underline: Container(),
                      value: selectval,
                      items: [
                        DropdownMenuItem(
                            child: Text(
                              "Public",
                              style: GoogleFonts.raleway(
                                color: colors.buttontextcolor,
                              ),
                            ),
                            value: "Public"),
                        DropdownMenuItem(
                          child: Text(
                            "Private",
                            style: GoogleFonts.raleway(
                              color: colors.buttontextcolor,
                            ),
                          ),
                          value: "Private",
                        )
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectval = value.toString();
                        });
                      },
                    ),
                  ),
                ),
                Spacer()
              ],
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                "Days",
                style: GoogleFonts.raleway(
                  color: colors.primarytextcolor,
                  fontSize: 20,
                ),
              ),
            ),
          ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Row(
           children: [
             Spacer(),
             Days("Monday"),
             Spacer(),
             Days("Tuesday"),
             Spacer(flex: 2,)
           ],
         ),
       ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Days("Wednesday"),
                Spacer(),
                Days("Thursday"),Spacer(),
                Days("Friday"),
                Spacer(flex: 2,)
              ],

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Spacer(),
                Days("Saturday"),
                Spacer(),
                Days("Sunday"),
                Spacer(flex: 2,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 100, 10, 50),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
          ),
        ],
      ),
    );
  }
  Widget Days(String day){
    return    ElevatedButton(
      onPressed: () {},
      child: Text(
        day,
        style: GoogleFonts.raleway(
            color: colors.primarytextcolor,
            fontSize: 12,
            fontWeight: FontWeight.w400),
      ),
      style: ElevatedButton.styleFrom(
          primary: colors.secondarybuttoncolor,
          padding: const EdgeInsets.symmetric(
              horizontal: 30, vertical: 20),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32))),
    );
  }
}
