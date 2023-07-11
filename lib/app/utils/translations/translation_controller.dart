import 'dart:ui';
import 'package:get/get.dart';

class TranslationController extends GetxController{
  void changeLanguage(String languageCode, String countryCode) {
    var locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }
}