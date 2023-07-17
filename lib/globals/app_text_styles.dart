import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles{

  static TextStyle headerTextStyle(){
    return GoogleFonts.signikaNegative(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,

    );
  }

  static TextStyle montserratStyle(){
    return GoogleFonts.montserrat(
      color: Colors.white,
      fontWeight: FontWeight.w800,
      fontSize: 24,
    );
  }

static TextStyle headingStyles(){
    return GoogleFonts.rubikMoonrocks(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Colors.white,
      letterSpacing: 2.5,

    );
}

}
