import 'package:get/get.dart';

import 'package:musify/app/pages/home/controller/home_page_controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}
