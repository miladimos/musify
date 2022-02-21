import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:musify/app/app_router.dart';
import 'package:get/get.dart';
import 'package:musify/app/utils/app_constants.dart';

class MusifyApplication extends StatelessWidget {
  final AppRouter router;

  const MusifyApplication({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final themeNotifier = Provider.of<ThemeNotifier>(context);

    return GetMaterialApp(
      title: AppConstants.applicationTitle,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        primaryIconTheme: const IconThemeData(color: Colors.black),
        primaryTextTheme: const TextTheme(headline6: TextStyle(color: Colors.black)),
        primaryColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      // theme: themeNotifier.getTheme(),
      // home: _buildStack()
      initialRoute: SPLASH_ROUTE,
      // initialBinding: AppBinding(),
      onGenerateRoute: router.generateRoute,
      // getPages: routes,
    );
  }
}
