import 'package:flutter/material.dart';
import 'package:negar/assets/assets.dart';
import 'package:negar/styles/color_palette.dart';

class NegarTheme {
  static final ThemeData lightTheme = ThemeData(
    fontFamily: Assets.productFont,
    brightness: Brightness.light,
    //! Color
    primaryColor: ColorPalette.light.primaryColor,
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      elevation: 0,
      shadowColor: null,
      color: ColorPalette.light.primaryColor,
      iconTheme: IconThemeData(
        color: ColorPalette.light.activeIconColor,
        size: 30,
        opacity: 1,
      ),
    ),
    iconTheme: IconThemeData(
      color: ColorPalette.light.activeIconColor,
    ),
    textTheme: TextTheme(
      bodyText1: Typography.englishLike2018.bodyText1!.copyWith(
        fontFamily: Assets.productFont,
        fontSize: 20,
        fontWeight: FontWeight.w100,
        color: ColorPalette.light.headingTextColor,
        letterSpacing: 3,
      ),
      bodyText2: Typography.englishLike2018.bodyText2!.copyWith(
        fontFamily: Assets.productFont,
        fontSize: 15,
        fontWeight: FontWeight.bold,
        color: ColorPalette.light.black,
      ),
      subtitle1: Typography.englishLike2018.subtitle1!.copyWith(
        color: ColorPalette.light.subtitleTextColor,
        fontSize: 13,
        fontWeight: FontWeight.w100,
        fontFamily: Assets.productFont,
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData();
}
