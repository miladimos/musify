import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musify/app/pages/splash/controller/splash_page_controller.dart';

class SplashPage extends GetView<SplashPageController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(child: Text("Splash")),
      ),
    );
  }
}
