import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_webapp_1/globals/app_colors.dart';

class AppTextStyles {
  static TextStyle headerTextStyle({Color color = Colors.white}) {
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: color,
    );
  }

  static TextStyle montserratStyle({required Color color,double fontsize = 24}) {
    return GoogleFonts.montserrat(
      color: color,
      fontWeight: FontWeight.w800,
      fontSize: fontsize,
    );
  }

  static TextStyle headingStyles({
    double fontSize = 36,
    color = Colors.white,
  }) {
    return GoogleFonts.rubikMoonrocks(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: color,
      letterSpacing: 2.5,
    );
  }

  static TextStyle normalStyle({Color color = Colors.white,}) {
    return GoogleFonts.signikaNegative(
      fontWeight: FontWeight.w500,
      fontSize: 17,
      color: color,
      letterSpacing: 1.5,
    );
  }

  static TextStyle comfortaaStyle(){
    return GoogleFonts.comfortaa(
      fontSize: 18,
      fontWeight: FontWeight.w800,
      color: Colors.grey,
    );
  }
}
