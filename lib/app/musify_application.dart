import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// // import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:musify/app/app_constants.dart';
import 'package:musify/app/musify.dart';
import 'package:musify/app/pages/home/home_page.dart';
import 'package:musify/app/pages/splash/splash_page.dart';

class MusifyApplication extends StatefulWidget {
  const MusifyApplication({Key? key}) : super(key: key);

  @override
  _MusifyApplicationState createState() => _MusifyApplicationState();
}

class _MusifyApplicationState extends State<MusifyApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConstants.applicationTitle,
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: const [
      //   // AppLocalizations.delegate, // Add this line
      //
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: const [
      //   Locale('en', ''),
      //   Locale('fa', ''),
      // ],

      // supportedLocales: AppLocalizations.supportedLocales,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      theme: ThemeData(
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme:
              TextTheme(headline6: TextStyle(color: Colors.black))),
      // initialRoute: '/splash',
      // routes: {
      //   '/': (context) => HomePage(),
      //   '/splash': (context) => SplashPage(),
      // },
      home: const Musify(),
    );
  }
}
