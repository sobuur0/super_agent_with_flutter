import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

///Utility class for all the styles used in this project

class AppStyles {
  static _textStyle({
    Color? color,
    required double size,
    required FontWeight fontWeight,
  }) {
    return TextStyle(
      color: color,
      fontSize: size,
      fontWeight: fontWeight,
    );
  }

  static TextStyle _roboto(Color? color, double size, FontWeight fontWeight) {
    return GoogleFonts.roboto(
        textStyle:
            _textStyle(color: color, size: size, fontWeight: fontWeight));
  }

  static TextStyle robotoRegular({
    required Color color,
    double size = 14,
  }) =>
      _roboto(color, size, FontWeight.w400);
}
