import 'package:flutter/material.dart';

class AppColors {
  const AppColors._();

  static const Color primary = Color(0xff10c914);
  static const Color primaryDark = Color(0xff1b8d0a);
  static const Color primaryLight = Color(0xff90d492);
  static const Color primaryShiny = Color(0xff57d922);
  static Color primaryDisable = AppColors.primary.withOpacity(0.50);
  static const Color darkBlack = Color(0xff0F0F0F);
  static const Color darkGrey = Color(0xff232323);
  static const Color greyUnavailable = Color(0xff5C5C5C);
  static const Color greyLight = Color(0xffCACACA);
  static const Color white = Colors.white;
  // static const Color errRed = Color(0xffc22f2f);
  static Color errRed = Colors.red.withOpacity(0.20);
  static Color errRedBold = Colors.red.withOpacity(0.80);
  static const Color green = Color(0xff41BE7B);
  static Color testGreen = AppColors.green.withOpacity(0.70);
  static const Color transparent = Colors.transparent;
}

extension TextStyleX on TextStyle {
  //colors
  TextStyle get primary => copyWith(color: AppColors.primary);
  TextStyle get primaryDark => copyWith(color: AppColors.primaryDark);
  TextStyle get primaryShiny => copyWith(color: AppColors.primaryShiny);
  TextStyle get primaryDisable => copyWith(color: AppColors.primaryDisable);
  TextStyle get darkBlack => copyWith(color: AppColors.darkBlack);
  TextStyle get darkGrey => copyWith(color: AppColors.darkGrey);
  TextStyle get greyUnavailable => copyWith(color: AppColors.greyUnavailable);
  TextStyle get greyLight => copyWith(color: AppColors.greyLight);
  TextStyle get white => copyWith(color: AppColors.white);
  TextStyle get errRed => copyWith(color: AppColors.errRed);
  TextStyle get errRedBold => copyWith(color: AppColors.errRedBold);
  TextStyle get green => copyWith(color: AppColors.green);
  TextStyle get testGreen => copyWith(color: AppColors.testGreen);
  TextStyle get rilTopiaFont => copyWith(fontFamily: 'RilTopia');

  TextStyle lineHeight(double value) => copyWith(height: value / fontSize!);

// TextStyle spacing(double value) =>
//     copyWith(letterSpacing: calculateSpacing(value));
}
