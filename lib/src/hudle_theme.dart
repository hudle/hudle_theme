import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hudle_theme/hudle_theme.dart';
import 'package:hudle_theme/src/theme_ext.dart';

import 'hudle_colors.dart';

ThemeData hudleTheme({Color scaffoldBackgroundColor = kColorBackground}) {
  return ThemeData(
    appBarTheme: hudleAppBarTheme(),
    primaryColor: kColorPrimary,
    primaryColorDark: kColorPrimaryDark,
    //accentColor: kColorAccent,
    indicatorColor: kColorAccent,
    textSelectionTheme: TextSelectionThemeData(
        cursorColor: kColorAccent, selectionColor: kColorAccent20),
    progressIndicatorTheme: ProgressIndicatorThemeData(color: kColorAccent),
    colorScheme:
        ColorScheme.light(primary: kColorPrimary, secondary: kColorAccent),
    scaffoldBackgroundColor: scaffoldBackgroundColor,
  );
}

AppBarTheme hudleAppBarTheme() {
  return AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light,
    //titleTextStyle: GoogleFonts.roboto()
  );
}

ThemeData consumerAppTheme({bool isDark = false}) {
  return isDark ? _consumerDarkTheme() : _consumerLightTheme();
}

ThemeData _consumerLightTheme() {
  return ThemeData(
    primaryColor: kColorWhite,
    backgroundColor: HudleColorV2.kScaffoldBackground,
    useMaterial3: false,
    extensions: [
      HudleColors(
        secondaryBackground: kColorWhite,
        primaryText: kPrimaryText,
        secondaryText: kSecondaryText,
        colorError: kColorError,
        colorRating: kColorRating,
        colorPendingText: kColorPendingText,
        colorEditTextBorder: kColorEditTextBorder,
        colorDivider: kColorDivider,
        tertiaryText: kTertiaryText,
        colorErrorIcon: kColorError,
        colorEditTextHint: kColorEditTextHint,
      )
    ],
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      actionsIconTheme: IconThemeData(color: kColorAccent),
      iconTheme: IconThemeData(color: kColorAppBarIcon),
      backgroundColor: kColorWhite,
      titleTextStyle: GoogleFonts.roboto(
        fontSize: 18,
        color: kColorAppBarTitle,
        fontWeight: FontWeight.w500,
      ),
      elevation: 0,
    ),
    textTheme: TextTheme().copyWith(
      headline1: GoogleFonts.roboto(
          color: kColorBlackText, fontSize: 22, fontWeight: FontWeight.bold),
      headline2: GoogleFonts.roboto(
          color: kColorBlackText, fontSize: 20, fontWeight: FontWeight.bold),
      headline4: GoogleFonts.roboto(
        fontSize: 16,
        color: kColorBlackText,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: GoogleFonts.roboto(
          color: kColorBlackText, fontSize: 14, fontWeight: FontWeight.normal),
      headline6: GoogleFonts.roboto(
          color: kColorSubHeading, fontSize: 12, fontWeight: FontWeight.normal),
      subtitle1: secondaryStyle(),
      subtitle2: tertiaryStyle(),
    ),
    colorScheme: ColorScheme.light(
      primary: kColorPrimary,
      secondary: kColorAccent,
    ),
    scaffoldBackgroundColor: HudleColorV2.kScaffoldBackground,
  );
}

ThemeData _consumerDarkTheme() {
  return ThemeData();
}
