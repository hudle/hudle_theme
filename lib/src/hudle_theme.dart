import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hudle_colors.dart';

ThemeData hudleTheme() {
  return ThemeData(
    appBarTheme: hudleAppBarTheme(),
    primaryColor: kColorPrimary,
    primaryColorDark: kColorPrimaryDark,
    accentColor: kColorAccent,
    colorScheme: ColorScheme.light(primary: kColorAccent, secondary: kColorAccent, onSecondary: kColorWhite),
    scaffoldBackgroundColor: kColorBackground,
  );
}


AppBarTheme hudleAppBarTheme() {
  return AppBarTheme(
      brightness : Brightness.dark,
      titleTextStyle: GoogleFonts.roboto()
  );
}