import 'package:flutter/material.dart';

class Themes {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    colorSchemeSeed: Colors.green,
    // colorScheme: const ColorScheme.light().copyWith(),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    // colorScheme: const ColorScheme.dark(),
    colorSchemeSeed: Colors.green,
  );
}
