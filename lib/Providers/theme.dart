import 'package:flutter/material.dart';

class AppTheme {
  // 1️⃣ Define your primary palette
  static const Color _primaryColor = Color(0xFF00695C);
  static const Color _secondaryColor = Color(0xFFFFC107);

  // 2️⃣ Build a light theme
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _primaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColor,
      secondary: _secondaryColor,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: Colors.grey[50],
    cardColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: _primaryColor,
      foregroundColor: Colors.white,
    ),
    // Customize switches, buttons, text, etc.:
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(_secondaryColor),
      trackColor: MaterialStateProperty.all(_secondaryColor.withOpacity(0.5)),
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.black87),
      bodyMedium: TextStyle(color: Colors.black54),
    ),
  );

  // 3️⃣ (Optional) a dark theme
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _primaryColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: _primaryColor,
      secondary: _secondaryColor,
      brightness: Brightness.dark,
    ),
    scaffoldBackgroundColor: Colors.black,
    cardColor: Colors.grey[800],
    appBarTheme: const AppBarTheme(
      backgroundColor: _primaryColor,
      foregroundColor: Colors.white,
    ),
    // ... etc
  );
}
