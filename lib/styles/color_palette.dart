import 'dart:ui';
import 'package:flutter/material.dart';

class ColorPalette {
  const ColorPalette({
    this.white = Colors.white,
    this.black = Colors.black,
    this.primaryColor = const Color(0xFFEAEBF3),
    this.activeIconColor = const Color(0xFF0A3068),
    this.inactiveIconColor = const Color.fromRGBO(10, 48, 104, 0.59),
    this.headingTextColor = const Color.fromRGBO(10, 48, 107, 0.7),
    this.titleTextColor = Colors.black,
    this.subtitleTextColor = const Color.fromRGBO(0, 0, 0, 0.5),
  });
  factory ColorPalette.of(BuildContext context) =>
      ColorPalette.fromBrightness(MediaQuery.of(context).platformBrightness);
  factory ColorPalette.fromBrightness(Brightness brightness) => brightness == Brightness.light ? light : dark;

  final Color black;
  final Color white;
  final Color primaryColor;
  final Color activeIconColor;
  final Color inactiveIconColor;
  final Color headingTextColor;
  final Color titleTextColor;
  final Color subtitleTextColor;
  static ColorPalette light = const ColorPalette();

  static ColorPalette dark = const ColorPalette();
}
