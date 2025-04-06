import 'package:flutter/material.dart';
import 'package:practicle_test/themes/theme.dart' show AppThemes;

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = AppThemes.lightTheme;
  ThemeData get themeData => _themeData;

  void toggleTheme(bool isDarkMode) {
    _themeData = isDarkMode ? AppThemes.darkTheme : AppThemes.lightTheme;
    notifyListeners();
  }

  void changeThemeColor(Color color) {
    _themeData = AppThemes.customTheme(color);
    notifyListeners();
  }
}
