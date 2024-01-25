import 'package:flutter/material.dart';

final ThemeData lightTheme = _buildLightTheme();

ThemeData _buildLightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      brightness: Brightness.light,
      colorScheme: const ColorScheme.light(
        background: Colors.white,
        primary: Color(0xfff93520),
        secondary: Color(0xff212121),
        tertiary: Color(0xff616162),
      ));
}

final ThemeData darkTheme = _buildDarkTheme();

ThemeData _buildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
      brightness: Brightness.dark,
      colorScheme: const ColorScheme.dark(
        background: Color(0xff181a20),
        primary: Color(0xfff93520),
        secondary: Color(0xfff6f6f5),
        tertiary: Colors.white,
      ));
}
