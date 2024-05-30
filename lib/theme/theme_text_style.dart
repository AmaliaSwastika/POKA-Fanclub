import 'package:flutter/material.dart';
import 'package:code_competence_2/theme/theme_color.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeTextStyle {
  TextStyle title = GoogleFonts.poppins(
    fontSize: 28,
    fontWeight: FontWeight.w800,
    color: ThemeColor().blackColor,
  );

  TextStyle titles = GoogleFonts.poppins(
    fontSize: 17,
    fontWeight: FontWeight.w500,
    color: ThemeColor().blackColor,
  );

  TextStyle contactUs = GoogleFonts.poppins(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: ThemeColor().blackColor,
  );

  TextStyle about = GoogleFonts.poppins(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: ThemeColor().blackColor,
  );

  TextStyle card1 = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: ThemeColor().whiteColor,
  );

  TextStyle card2 = GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: ThemeColor().whiteColor,
  );

  TextStyle greeting = GoogleFonts.poppins(
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: ThemeColor().blackColor,
  );

  TextStyle appBar = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w800,
    color: ThemeColor().whiteColor,
  );
}
