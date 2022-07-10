import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scheduler_app/utils/colors.dart' as colors;
import 'package:scheduler_app/widgets/custom_sliver_widget.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.scaffoldColor,
    );
  }
}
