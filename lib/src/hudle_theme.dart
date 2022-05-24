import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    useMaterial3: true,
    extensions: [
      HudleColors(
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
      titleTextStyle: TextStyle(fontSize: 18, color: kColorAppBarTitle),
      elevation: 0,
    ),
  );
}

ThemeData _consumerDarkTheme() {
  return ThemeData();
}
