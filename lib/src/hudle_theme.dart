import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'hudle_colors.dart';

ThemeData hudleTheme({Color scaffoldBackgroundColor = kColorBackground}) {
  return ThemeData(
    appBarTheme: hudleAppBarTheme(),
    primaryColor: kColorPrimary,
    primaryColorDark: kColorPrimaryDark,
    //accentColor: kColorAccent,
    indicatorColor: kColorAccent,
    textSelectionTheme: TextSelectionThemeData(cursorColor: kColorAccent, selectionColor: kColorAccent20),
    progressIndicatorTheme: ProgressIndicatorThemeData(
        color: kColorAccent
    ),
    colorScheme: ColorScheme.light(primary: kColorPrimary, secondary: kColorAccent),
    scaffoldBackgroundColor: scaffoldBackgroundColor,
  );
}


AppBarTheme hudleAppBarTheme() {
  return AppBarTheme(
      systemOverlayStyle : SystemUiOverlayStyle.light,
      //titleTextStyle: GoogleFonts.roboto()
  );
}