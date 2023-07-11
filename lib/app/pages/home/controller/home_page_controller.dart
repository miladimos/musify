import 'package:get/get.dart';

class HomePageController extends GetxController {
  var currentValue = 0.obs;

  void increment() => currentValue++;

}