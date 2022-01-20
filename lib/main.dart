import 'package:flutter/material.dart';
import 'package:musify/app/musify_application.dart';

import 'global_error_handler.dart';

void main() {
  GlobalErrorHandler(child: const MusifyApplication());
}
