import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFont {
  static TextStyle googleAbel(
      double fontSize, Color color, FontWeight fontWeight) {
    return GoogleFonts.abel(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }
}
