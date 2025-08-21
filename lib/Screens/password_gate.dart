import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
// import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:staffapp/Screens/Home_page.dart';

class PasswordGatePage extends StatefulWidget {
  static const routeName = "/password-gate";

  const PasswordGatePage({super.key});

  @override
  State<PasswordGatePage> createState() => _PasswordGatePageState();
}

class _PasswordGatePageState extends State<PasswordGatePage> {
  bool _isLoading = true;
  // bool _isObscured = true;

  @override
  void initState() {
    super.initState();
    _checkAuth();
  }

  Future<void> _checkAuth() async {
    final prefs = await SharedPreferences.getInstance();
    final isAuthed = prefs.getBool('is_authenticated') ?? false;

    if (isAuthed) {
      _goToHome();
    } else {
      setState(() => _isLoading = false);
    }
  }

  void _goToHome() {
    Navigator.pushReplacementNamed(context, TilesPage.routeName);
  }

  Future<void> _loginWithGoogle() async {
    setState(() => _isLoading = true);
    try {
      final result = await Amplify.Auth.signInWithWebUI(
        provider: AuthProvider.google,
      );
      if (result.isSignedIn) {
        Navigator.pushReplacementNamed(context, TilesPage.routeName);
      }
    } on AuthException catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Login failed: ${e.message}')));
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      backgroundColor: theme.colorScheme.surface,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/logo_black_envision.png'),
                height: 100,
                color: const Color.fromARGB(255, 13, 162, 255),
              ),
              const SizedBox(height: 16),
              Text("Enter Password", style: theme.textTheme.headlineSmall),
              const SizedBox(height: 8),
              Text(
                "This app requires a password to continue.",
                style: theme.textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _loginWithGoogle,
                  label: const Text(
                    'Continue to Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 163, 233),
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.yellow[900],
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
