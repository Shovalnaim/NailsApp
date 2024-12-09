import 'package:flutter/material.dart';

class ModeTheme {
  static final lightMode = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.light,
        seedColor: Colors.purple,
      ));
  static final darkMode = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: Colors.purple,
      ));
}
