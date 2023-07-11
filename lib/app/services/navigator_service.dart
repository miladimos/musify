import 'package:musify/app/utils/mixins/app_logger.dart';
import 'package:flutter/material.dart';

class NavigatorService with AppLogger {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  NavigatorState get state => navigatorKey.currentState!;

  final initialRoute = '/';
}
