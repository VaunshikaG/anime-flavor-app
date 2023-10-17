import 'package:flutter/cupertino.dart';
import '../FlavorConfig.dart';
import '/main.dart';
import '/utils/appTheme.dart';

void main() {
  mainCommon(
    config: FlavorConfig(
      name: 'AnimeFox',
      env: 'AnimeFox',
      flavor: Flavor.AnimeFox,
      values: FlavorValues(
        appName: 'AnimeFox',
        packageName: 'com.animefox',
        appUrl: 'https://animefox.in/api',
        webCode: 'AnimeFox',
        mainColor: CupertinoColors.activeOrange.darkColor,
        color2: const Color(0xFFFFB339),
        icon: 'assets/img/animefox/icon1.png',
        logo: 'assets/img/animefox/logo.png',
        whiteLogo: 'assets/img/animefox/white_logo.png',
        theme: AppTheme.animeRushTheme,
        versionName: '0.0.1',
        versionCode: '1',
      ),
    ),
  );
}
