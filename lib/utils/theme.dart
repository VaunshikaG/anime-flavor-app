import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../flavor/FlavorConfig.dart';

class CustomTheme {
  const CustomTheme();
  // f8b745 orange
  // 202125  black

  static Color themeColor1 = FlavorConfig.instance.values.mainColor;
  static Color themeColor2 = FlavorConfig.instance.values.color2;

  //  white
  static Color transparent = const Color(0x3C000000);
  static Color white = Colors.white;
  static Color white24 = Colors.white24;

  //  grey
  static Color grey = Colors.grey;
  static Color grey400 = Colors.grey.shade400;
  static Color grey300 = Colors.grey.shade300;
  static Color grey600 = Colors.grey.shade600;
  static Color grey1 = const Color(0xFF1C1C1E);
  static Color grey2 = const Color(0xFF363638);
  static Color grey3 = const Color(0xFF2C2C2E);

  //  blue
  static Color blue = Colors.blue.shade700;
  static Color blueGrey50 = Colors.blueGrey.shade50;

  //  black
  static Color img_blur = const Color(0xB0000000);
  static Color black = Colors.black;
  static Color black12 = Colors.black12;
  static Color black45 = Colors.black45;
  static Color black54 = Colors.black54;
  static Color black87 = Colors.black87;
}

List<Color> ColorList = [
  CupertinoColors.systemIndigo.darkHighContrastColor,
  CupertinoColors.systemOrange.darkHighContrastColor,
  CupertinoColors.systemPurple.darkHighContrastColor,
  CupertinoColors.systemPink.darkHighContrastColor,
  CupertinoColors.systemBlue.darkHighContrastColor,
  CupertinoColors.systemGreen.darkHighContrastColor,
  CupertinoColors.systemRed.darkHighContrastColor,
];
