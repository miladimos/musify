import 'package:flutter/material.dart';
import 'package:musify/app/constants.dart';

class MusifyApplication extends StatefulWidget {
  const MusifyApplication({Key? key}) : super(key: key);

  @override
  _MusifyApplicationState createState() => _MusifyApplicationState();
}

class _MusifyApplicationState extends State<MusifyApplication> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: applicationTitle,
      // supportedLocales: AppLocalizations.supportedLocales,
      // localizationsDelegates: AppLocalizations.localizationsDelegates,
      theme: ThemeData(
          primaryIconTheme: IconThemeData(color: Colors.black),
          primaryTextTheme: TextTheme(headline6: TextStyle(color: Colors.black))
      ),
      home: Text('Musify'),
    );
  }
}
