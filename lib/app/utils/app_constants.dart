import 'package:flutter/material.dart';

class AppConstants {
  static String applicationTitle = 'musify';
  static String githubRepository = 'https://github.com/miladimos/musify';
  static const List<Locale> supportedLocales = [
    Locale("fa", "IR"),
    Locale("en", "US"),
  ];
  static const backPressCloseTimeout = Duration(seconds: 2);

  static const appLogoPath = 'assets/images/logo.png';

  static Color primaryColor = const Color(0x11111111);
  static Color primarySwatch = const Color(0x11111111);
  static Color primaryDarkColor = const Color(0x11111111);
  static Color topBarColor = const Color(0xfffafafa);
}

class ApiEndpoints {
  static String baseUrl = '';
}
