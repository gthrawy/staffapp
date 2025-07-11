import 'package:flutter/material.dart';

class AppTheme {
  // 1️ Define your primary palette
  static const Color _primaryColor = Color.fromARGB(255, 2, 5, 163);
  static const Color _secondaryColor = Color.fromARGB(255, 214, 8, 8);

  // 2️ Build a light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _primaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColor,
      secondary: _secondaryColor,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 255, 251, 251),
    cardColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: _primaryColor,
      foregroundColor: Colors.white,
    ),
    // Customize switches, buttons, text, etc.:
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(_secondaryColor),
      trackColor: WidgetStateProperty.all(_secondaryColor.withOpacity(0.5)),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black87),
      bodyMedium: TextStyle(color: Colors.black54),
    ),
  );

  // 3️ (Optional) a dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _primaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColor,
      secondary: _secondaryColor,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 39, 38, 38),
    cardColor: Colors.grey[800],
    appBarTheme: const AppBarTheme(
      backgroundColor: _primaryColor,
      foregroundColor: Color.fromARGB(255, 3, 3, 3),
    ),
    // ... etc
  );
}
