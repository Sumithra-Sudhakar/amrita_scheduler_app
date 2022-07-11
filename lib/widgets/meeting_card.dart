import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduler_app/screens/loadingscreen.dart';
import 'package:scheduler_app/utils/colors.dart' as colors;
import 'package:scheduler_app/widgets/custom_sliver_widget.dart';

class MeetingCard extends StatelessWidget {
  const MeetingCard({
    Key? key,
    required this.title,
    required this.person,
    required
    this.time})
      : super(key: key);
  final String title;
  final String time;
  final String person;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(15.0),
    child:  Row(
      
    )
    );
  }
}
