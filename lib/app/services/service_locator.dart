import 'package:musify/app/services/navigator_service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> setupIoCContainer() async {
  debugPrint("starting services ...");

  serviceLocator
      .registerLazySingleton<NavigatorService>(() => NavigatorService());

  // await Get.putAsync(() => Service().init());

  debugPrint("all services started ...");
}
