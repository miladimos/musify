import 'package:get/get.dart';

import 'package:musify/app/pages/play/controller/play_page_controller.dart';

class PlayPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(PlayPageController());
  }
}
