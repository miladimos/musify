import 'dart:async';

import 'package:flutter/material.dart';
import 'package:musify/app/helpers.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  Timer simulateTimer() {
    var _duration = Duration(seconds: 6);
    return Timer(_duration, () {
      Helpers.navigateToPageRoute(context, '/');
    });
  }

  @override
  void initState() {
    super.initState();

    simulateTimer();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Splash"),
      ),
    );
  }
}
