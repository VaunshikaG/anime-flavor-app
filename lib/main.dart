import 'dart:developer';

import 'package:anime/screens/splash.dart';
import 'package:anime/utils/appTheme.dart';
import 'package:anime/widgets/customButtons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:flutter_jailbreak_detection/flutter_jailbreak_detection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';

import 'flavor/FlavorConfig.dart';

class DownloadClass {
  static void callback(String id, DownloadTaskStatus status, int progress) {
    debugPrint("Download Status: $status,  Progress: $progress");
  }
}
/*

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.portraitDown,
  ]);
  await FlutterDownloader.initialize(
    debug: true,
    ignoreSsl: true,
  );
  runApp(const MyApp());
}
*/

var flavorConfigProvider;
FlavorConfig? flavorConfig;

Future<void> mainCommon({required FlavorConfig config}) async {
  WidgetsFlutterBinding.ensureInitialized();
  flavorConfigProvider = StateProvider((ref) => config);
  log("flavorConfigProvider.toString()");
  log(flavorConfigProvider.toString());
  // flavorConfigProvider = Provider<FlavorConfig>((ref) => config);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    // DeviceOrientation.portraitDown,
  ]);
  await FlutterDownloader.initialize(
    debug: true,
    ignoreSsl: true,
  );
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool? _jailbroken;
  bool? _developerMode;

  @override
  void initState() {
    initPlatformState();
    super.initState();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    final appTheme = Theme.of(context);

    bool jailBroken;
    bool developerMode;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      jailBroken = await FlutterJailbreakDetection.jailbroken;
      developerMode = await FlutterJailbreakDetection.developerMode;

      if (jailBroken) {
        Get.defaultDialog(
          title: "Device Security Warning",
          middleText:
              "This app cannot be used on a jailbroken or rooted device.",
          titleStyle: appTheme.textTheme.bodyLarge,
          middleTextStyle: appTheme.textTheme.labelSmall,
          cancel: textButton(text: 'Ok', onPressed: () {}),
          radius: 6,
          titlePadding: const EdgeInsets.only(top: 15),
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          backgroundColor: appTheme.colorScheme.background,
          barrierDismissible: false,
        );
      }
    } on PlatformException {
      jailBroken = true;
      developerMode = true;
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    // setState(() {
      _jailbroken = jailBroken;
      _developerMode = developerMode;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: FlavorConfig.instance!.name,
      // title: 'AnimeRush',
      debugShowCheckedModeBanner: false,
      theme: FlavorConfig.instance!.values.theme,
      darkTheme: FlavorConfig.instance!.values.theme,
      // theme: AppTheme.animeRushTheme,
      // darkTheme: AppTheme.animeRushTheme,
      themeMode: ThemeMode.dark,
      home: const Splash(),
      // getPages: AppRoutes.pages,
    );
  }
}
