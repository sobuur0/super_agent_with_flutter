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
      textStyle: _textStyle(color: color, size: size, fontWeight: fontWeight),
    );
  }

  static TextStyle _lato(Color? color, double size, FontWeight fontWeight) {
    return GoogleFonts.lato(
      textStyle: _textStyle(color: color, size: size, fontWeight: fontWeight),
    );
  }

  ///Returns a [TextStyle] that uses the default family roboto
  ///With a default 'fontSize' of 14 and 'fontWeight' [FontWeight.w400]
  static TextStyle robotoRegular({
    required Color color,
    double size = 14,
  }) =>
      _roboto(color, size, FontWeight.w400);

  ///Returns a [TextStyle] that uses the default family roboto
  ///With a default 'fontSize' of 14 and 'fontWeight' [FontWeight.w500]
  static TextStyle robotoMedium({
    required Color color,
    double size = 14,
  }) =>
      _roboto(color, size, FontWeight.w500);

  ///Returns a [TextStyle] that uses the default family roboto
  ///With a default 'fontSize' of 14 and 'fontWeight' [FontWeight.w400]
  static TextStyle latoRegular({
    required Color color,
    double size = 16,
  }) =>
      _lato(color, size, FontWeight.w400);

  ///Returns a [TextStyle] that uses the default family roboto
  ///With a default 'fontSize' of 14 and 'fontWeight' [FontWeight.w400]
  static TextStyle latoBold({
    required Color color,
    double size = 20,
  }) =>
      _lato(color, size, FontWeight.w900);
}
