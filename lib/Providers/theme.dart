import 'package:flutter/material.dart';

class AppTheme {
  // 1️ Define your primary palette
  static const Color _mainColor = Color.fromARGB(255, 3, 81, 218);
  static const Color _secondaryColor = Color.fromARGB(255, 235, 40, 6);

  // 2️ Build a light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _mainColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _mainColor,
      secondary: _secondaryColor,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: Colors.grey[50],
    cardColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: _mainColor,
      foregroundColor: Colors.white,
    ),
    // Customize switches, buttons, text, etc.:
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(_secondaryColor),
      // ignore: deprecated_member_use
      trackColor: WidgetStateProperty.all(_secondaryColor.withOpacity(0.5)),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black87),
      bodyMedium: TextStyle(color: Colors.black54),
    ),
  );

  // 3️ a dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _mainColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _mainColor,
      secondary: _secondaryColor,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),
    cardColor: const Color.fromARGB(255, 29, 29, 72),
    appBarTheme: const AppBarTheme(
      backgroundColor: _mainColor,
      foregroundColor: Color.fromARGB(255, 255, 255, 255),
    ),

  );
}