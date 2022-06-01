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
        primaryText: HudleColorV2.kPrimaryTextColor,
        secondaryText: HudleColorV2.kSecondaryTextColor,
        colorError: kColorError,
        colorRating: kColorRating,
        colorPendingText: kColorPendingText,
        colorEditTextBorder: kColorEditTextBorder,
        colorDivider: kColorDivider,
        tertiaryText: HudleColorV2.kTertiaryTextColor,
        colorErrorIcon: kColorError,
        colorEditTextHint: kColorEditTextHint,
      )
    ],
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.light,
      actionsIconTheme: IconThemeData(color: HudleColorV2.kColorAppBarIcon),
      iconTheme: IconThemeData(color: HudleColorV2.kColorAppBarIcon),
      backgroundColor: kColorWhite,
      titleTextStyle: GoogleFonts.roboto(
        fontSize: 18,
        color: HudleColorV2.kColorAppBarTitle,
        fontWeight: FontWeight.w500,
      ),
      elevation: 0,
    ),
    errorColor: kColorError,
    textTheme: TextTheme().copyWith(
      headline1: GoogleFonts.roboto(
        color: HudleColorV2.kPrimaryTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      headline2: GoogleFonts.roboto(
        color: HudleColorV2.kPrimaryTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      headline3: GoogleFonts.roboto(
        color: HudleColorV2.kPrimaryTextColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      headline4: GoogleFonts.roboto(
        fontSize: 16,
        color: HudleColorV2.kPrimaryTextColor,
        fontWeight: FontWeight.w500,
      ),
      headline5: GoogleFonts.roboto(
        fontSize: 14,
        color: HudleColorV2.kPrimaryTextColor,
        fontWeight: FontWeight.w500,
      ),
      headline6: GoogleFonts.roboto(
        color: HudleColorV2.kPrimaryTextColor,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      bodyText1: GoogleFonts.roboto(
        color: HudleColorV2.kPrimaryTextColor,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      bodyText2: GoogleFonts.roboto(
        color: HudleColorV2.kPrimaryTextColor,
        fontSize: 12,
        fontWeight: FontWeight.normal,
      ),
      subtitle1: GoogleFonts.roboto(
        fontSize: 14,
        color: HudleColorV2.kSecondaryTextColor,
      ),
      subtitle2: GoogleFonts.roboto(
        fontSize: 12,
        color: HudleColorV2.kTertiaryTextColor,
      ),
      caption: GoogleFonts.roboto(
          color: HudleColorV2.kSecondaryTextColor,
          fontSize: 10,
          fontWeight: FontWeight.normal,
      ),
      button: GoogleFonts.roboto(
        fontSize: 14,
        color: HudleColorV2.kColorSecondary,
      )
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(textStyle: MaterialStateProperty.all(GoogleFonts.roboto(
        fontSize: 14,
        color: HudleColorV2.kColorSecondary,
      ),),)
    ),
    checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(HudleColorV2.kColorSecondary)
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(4),),
            side: BorderSide(
                color: HudleColorV2.kColorSecondary,
                width: 1),),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: HudleColorV2.kColorSecondary,
        onPrimary: HudleColorV2.kColorOnSecondary,
        textStyle: GoogleFonts.roboto(
          fontWeight: FontWeight.w500,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4)
        ),
      )
    ),
    colorScheme: ColorScheme.light(
      primary: HudleColorV2.kColorPrimary,
      primaryContainer: HudleColorV2.kColorPrimaryDark,
      onPrimary: HudleColorV2.kColorOnPrimary,
      secondary: HudleColorV2.kColorSecondary,
      secondaryContainer: HudleColorV2.kColorSecondaryDark,
      onSecondary: HudleColorV2.kColorOnSecondary,
      error: kColorError,
      shadow: HudleColorV2.kShadowColor,
    ),
    scaffoldBackgroundColor: HudleColorV2.kScaffoldBackground,
  );
}

ThemeData _consumerDarkTheme() {
  return ThemeData();
}
