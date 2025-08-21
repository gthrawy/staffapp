import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_authenticator/amplify_authenticator.dart';
import 'package:staffapp/Providers/theme.dart';

import 'amplifyconfiguration.dart';
import 'Providers/theme_provider.dart';
import 'Screens/password_gate.dart';
import 'Screens/Home_page.dart';
import 'Screens/settings_page.dart';
import 'Screens/Website.dart';
// import 'Screens/tiles_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _configureAmplify();
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

/// I Set up the Amplify plugins and call configure()
Future<void> _configureAmplify() async {
  final authPlugin = AmplifyAuthCognito();
  // final apiPlugin = AmplifyAPI(); //
  Amplify.addPlugins([authPlugin]);

  try {
    await Amplify.configure(amplifyconfig);
    safePrint('Amplify configured');
  } on AmplifyAlreadyConfiguredException {
    safePrint('Already configured');
  } catch (e) {
    safePrint('Configure failed: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Authenticator(
      child: MaterialApp(
        title: 'Staff App',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: themeProvider.themeMode,
        initialRoute: PasswordGatePage.routeName,
        routes: {
          PasswordGatePage.routeName: (_) => const PasswordGatePage(),
          MyWebsitePage.routeName: (_) =>
              const MyWebsitePage(title: '', url: ''),
          TilesPage.routeName: (_) => const TilesPage(),
          SettingsPage.routeName: (_) => const SettingsPage(),
        },
      ),
    );
  }
}
