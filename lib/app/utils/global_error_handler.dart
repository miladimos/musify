import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'mixins/app_logger.dart';
import 'package:device_preview/device_preview.dart';

class GlobalErrorHandler with AppLogger {
  GlobalErrorHandler({required Widget child}) {
    if (kReleaseMode) {
      ErrorWidget.builder = (_) => const SizedBox();
    }

    FlutterError.onError = _handleFlutterError;

    runZonedGuarded(() {
      WidgetsFlutterBinding.ensureInitialized();

      runApp(DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => child,
      ));
    }, (error, stack) {});
  }

  void _handleFlutterError(FlutterErrorDetails details) {
    if (kReleaseMode) {
      // send to error server
      Zone.current.handleUncaughtError(details.exception, details.stack!);
    } else {
      FlutterError.dumpErrorToConsole(details);
    }
  }
}
