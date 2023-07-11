import 'package:musify/app/utils/themes/theme_controller.dart';
import 'package:musify/app/utils/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musify/app/utils/app_routes.dart';
import 'package:musify/app/utils/translations/messages.dart';
import 'package:musify/app/utils/app_constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:device_preview/device_preview.dart';

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  ThemeController themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: AppConstants.applicationTitle,
      translations: Messages(),
      fallbackLocale: const Locale('en', 'US'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale("fa"),
        Locale("en"),
      ],
      themeMode: themeController.theme,
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      initialRoute: AppRoutes.initialRoute,
      getPages: AppRoutes.routes,
    );
  }
}
