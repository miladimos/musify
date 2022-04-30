import 'dart:async';

import 'package:flutter/material.dart';
import 'package:musify/app/app_router.dart';
import 'package:musify/app/utils/helpers.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  Timer simulateTimer() {
    var _duration = const Duration(seconds: 2);
    return Timer(_duration, () {
      Helpers.navigateToPageRoute(context, HOME_PAGE_ROUTE);
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
