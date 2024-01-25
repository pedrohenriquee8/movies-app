import 'package:flutter/material.dart';
import 'package:movies_app/ui/themes/theme.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightTheme;

  void toggleTheme() {
    if (_themeData == lightTheme) {
      themeData = darkTheme;
      return;
    }

    themeData = lightTheme;
  }

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}
