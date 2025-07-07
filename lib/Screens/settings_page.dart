import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:staffapp/Providers/theme_provider.dart';

import 'package:staffapp/Screens/Home_page.dart';
import 'package:staffapp/Widgets/Nav_bar.dart';

class SettingsPage extends StatelessWidget {
  static const routeName = '/settings';
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          SwitchListTile(
            title: const Text('Dark Mode'),
            value: themeProvider.isDarkMode,
            onChanged: (val) => themeProvider.toggleTheme(val),
          ),
          ListTile(
            title: const Text('Account'),
            subtitle: const Text('Manage your account settings'),
            leading: const Icon(Icons.person),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Privacy'),
            subtitle: const Text('Privacy and security options'),
            leading: const Icon(Icons.lock),
            onTap: () {},
          ),
        ],
      ),
      bottomNavigationBar: CustomNavBar(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacementNamed(context, TilesPage.routeName);
          }
        },
      ),
    );
  }
}
