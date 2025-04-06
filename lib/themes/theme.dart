import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.red,
  );

  static ThemeData customTheme(Color color) {
    return ThemeData(
      primarySwatch: color as MaterialColor,
      brightness: Brightness.light,
    );
  }
}
