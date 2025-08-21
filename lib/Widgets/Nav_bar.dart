import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const CustomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.apps_outlined, color: Colors.blue),
          label: 'Apps',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.public_sharp, color: Colors.blue),
          label: 'Website',
        ),
      ],
    );
  }
}
