import 'package:flutter/material.dart';

@immutable
class HudleColors extends ThemeExtension<HudleColors> {
  final Color tertiaryText;
  final Color colorDivider;

  final Color colorRating;
  final Color colorEditTextHint;
  final Color colorEditTextBorder;

  final Color colorErrorIcon;
  final Color colorPendingText;
  final Color colorError;
  final Color primaryText;
  final Color secondaryText;
  final Color secondaryBackground;

  @override
  HudleColors copyWith(
      {Color? primaryText,
      Color? secondaryText,
      Color? tertiaryText,
      Color? colorEditTextBorder,
      Color? colorRating,
      Color? colorEditTextHint,
      Color? colorErrorIcon,
      Color? colorDivider,
      Color? colorPendingText,
      Color? colorError}) {
    return HudleColors(
      primaryText: primaryText ?? this.primaryText,
      secondaryText: secondaryText ?? this.secondaryText,
      tertiaryText: tertiaryText ?? this.tertiaryText,
      colorEditTextBorder: colorEditTextBorder ?? this.colorEditTextBorder,
      colorRating: colorRating ?? this.colorRating,
      colorEditTextHint: colorEditTextHint ?? this.colorEditTextBorder,
      colorErrorIcon: colorErrorIcon ?? this.colorErrorIcon,
      colorDivider: colorDivider ?? this.colorDivider,
      colorPendingText: colorPendingText ?? this.colorPendingText,
      colorError: colorError ?? this.colorError,
      secondaryBackground: secondaryBackground
    );
  }

  @override
  HudleColors lerp(ThemeExtension<HudleColors>? other, double t) {
    if (other is! HudleColors) {
      return this;
    }
    return HudleColors(
      primaryText: Color.lerp(primaryText, other.primaryText, t) ?? primaryText,
      secondaryText:
          Color.lerp(secondaryText, other.secondaryText, t) ?? secondaryText,
      colorErrorIcon:
          Color.lerp(colorErrorIcon, other.colorErrorIcon, t) ?? colorErrorIcon,
      tertiaryText:
          Color.lerp(tertiaryText, other.tertiaryText, t) ?? tertiaryText,
      colorEditTextHint:
          Color.lerp(colorEditTextHint, other.colorEditTextHint, t) ??
              colorEditTextHint,
      colorError: Color.lerp(colorError, other.colorError, t) ?? colorError,
      colorRating: Color.lerp(colorRating, other.colorRating, t) ?? colorRating,
      colorDivider:
          Color.lerp(colorDivider, other.colorDivider, t) ?? colorDivider,
      colorPendingText:
          Color.lerp(colorPendingText, other.colorPendingText, t) ??
              colorPendingText,
      colorEditTextBorder:
          Color.lerp(colorEditTextBorder, other.colorEditTextBorder, t) ??
              colorEditTextBorder,
      secondaryBackground:
      Color.lerp(secondaryBackground, other.secondaryBackground, t) ??
          secondaryBackground,
    );
  }

  // Optional
  @override
  String toString() =>
      'MyColors(brandColor: $primaryText, danger: $secondaryText)';

  HudleColors(
      {required this.tertiaryText,
      required this.colorDivider,
      required this.colorRating,
      required this.colorEditTextHint,
      required this.colorEditTextBorder,
      required this.colorErrorIcon,
      required this.colorPendingText,
      required this.colorError,
      required this.primaryText,
      required this.secondaryText,
      required this.secondaryBackground});
}
