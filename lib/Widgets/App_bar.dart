import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:staffapp/Providers/theme_provider.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return StatefulBuilder(
      builder: (context, setState) {
       
        return AppBar(
          title: Text(title),
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(themeProvider.isDarkMode ? Icons.toggle_on : Icons.toggle_off),
              onPressed: () {
                setState(() {
                  themeProvider.toggleTheme(!themeProvider.isDarkMode);
                });
              },
            ),
          ],
        );
      },
    );
  }



  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

