import 'package:flutter/cupertino.dart';
import '../FlavorConfig.dart';
import '/main.dart';
import '/utils/appTheme.dart';

void main() {
  mainCommon(
    config: FlavorConfig(
      name: 'AnimeRush',
      env: 'AnimeRush',
      flavor: Flavor.AnimeRush,
      values: FlavorValues(
        appName: 'AnimeRush',
        packageName: 'com.animerush',
        appUrl: 'https://animerush.in/api',
        webCode: 'AnimeRush',
        mainColor: CupertinoColors.activeOrange.darkColor,
        color2: const Color(0xFFFFB339),
        icon: 'assets/img/animerush/icon1.png',
        logo: 'assets/img/animerush/logo.png',
        whiteLogo: 'assets/img/animerush/white_logo.png',
        theme: AppTheme.animeRushTheme,
        versionCode: '1',
        versionName: '1.0.0',
      ),
    ),
  );
}
