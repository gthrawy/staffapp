import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:staffapp/Providers/theme.dart';

import 'package:staffapp/Providers/theme_provider.dart';

import 'package:staffapp/Screens/Home_page.dart';
import 'package:staffapp/Screens/settings_page.dart';


void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Staff App',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.themeMode,
      initialRoute: TilesPage.routeName,
      routes: {
        TilesPage.routeName: (_) => const TilesPage(),
        SettingsPage.routeName: (_) => const SettingsPage(),
      },
    );
  }
}