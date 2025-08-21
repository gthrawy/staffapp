import 'package:flutter/material.dart';

class AppTheme {
  // 1️ Define your primary palette
  static const Color _mainColor = Color.fromARGB(255, 3, 125, 218);
  static const Color _secondaryColor = Color.fromARGB(255, 6, 208, 235);
  // ignore: unused_field
  static const Color _accentColor = Color.fromARGB(255, 239, 69, 69);
  static const Color _textColor = Color.fromARGB(255, 255, 255, 255);

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
    scaffoldBackgroundColor: const Color.fromARGB(255, 63, 59, 59),
    cardColor: const Color.fromARGB(255, 68, 68, 99),
    appBarTheme: const AppBarTheme(
      backgroundColor: _mainColor,
      foregroundColor: Color.fromARGB(255, 255, 255, 255),
      titleTextStyle: TextStyle(color: _textColor),
    ),
  );
}
