import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData _lightThemeData = ThemeData.light();
  static final ThemeData _darkThemeData = ThemeData.dark();

  static ThemeData get lightThemeData => _lightThemeData;
  static ThemeData get darkThemeData => _darkThemeData;
}
