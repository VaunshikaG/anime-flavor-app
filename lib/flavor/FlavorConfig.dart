import 'package:flutter/material.dart';

enum Flavor {
  AnimeRush, AnimeFox
}

class FlavorValues {
  String appName;
  String packageName;
  String appUrl;
  String webCode;
  Color mainColor;
  Color color2;
  String icon;
  String logo;
  String whiteLogo;
  ThemeData theme;
  String versionCode;
  String versionName;

  FlavorValues({
    required this.appName,
    required this.packageName,
    required this.appUrl,
    required this.webCode,
    required this.mainColor,
    required this.color2,
    required this.icon,
    required this.logo,
    required this.whiteLogo,
    required this.theme,
    required this.versionCode,
    required this.versionName,
  });
}

class FlavorConfig {
  Flavor flavor;
  String env;
  String name;
  FlavorValues values;

  FlavorConfig({
    required this.flavor,
    required this.name,
    required this.env,
    required this.values,
  });


  static FlavorConfig get instance => FlavorConfig.instance;
}