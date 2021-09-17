import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hudle_colors.dart';

TextStyle primaryStyle({double fontSize = 16, FontWeight? fontWeight}) {
  return GoogleFonts.roboto(
      fontSize: fontSize, color: kPrimaryText, fontWeight: fontWeight);
}

TextStyle secondaryStyle({double fontSize = 14, FontWeight? fontWeight}) {
  return GoogleFonts.roboto(
      fontSize: fontSize, color: kSecondaryText, fontWeight: fontWeight);
}

TextStyle tertiaryStyle({double fontSize = 12, FontWeight? fontWeight}) {
  return GoogleFonts.roboto(
      fontSize: fontSize, color: kTertiaryText, fontWeight: fontWeight);
}

TextStyle normalStyle({Color color = kPrimaryText, double fontSize = 14, FontWeight? fontWeight, TextStyle? textStyle, TextDecoration? decoration}) {
  return GoogleFonts.roboto(
      textStyle: textStyle,
      decoration: decoration,
      fontSize: fontSize, color: color, fontWeight: fontWeight);
}
