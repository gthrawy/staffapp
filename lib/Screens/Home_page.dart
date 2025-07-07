import 'package:flutter/material.dart';
import 'package:staffapp/Screens/settings_page.dart';
import 'package:staffapp/Widgets/App_bar.dart';
import 'package:staffapp/Widgets/Nav_bar.dart';
import 'package:staffapp/Widgets/ui_tile.dart';
// import 'package:staffapp/Pages/settings_page.dart';  // <-- import your SettingsPage

class TilesPage extends StatefulWidget {
  static const routeName = '/tiles';  // <-- give it a routeName

  const TilesPage({Key? key}) : super(key: key);

  @override
  _TilesPageState createState() => _TilesPageState();
}

class _TilesPageState extends State<TilesPage> {
  bool _initializing = false;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Envision Cleveland Staff'),
      body: _initializing
          ? const Center(child: CircularProgressIndicator())
          : Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 10),
                Text(
                  'Adminstration',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'PlayfairDisplay',
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: Center(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 13 / 13.5,
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      children: const [
                        UiTile(
                          'assets/images/bible.jpg',
                          'Env Cle',
                          'www.envcle.org',
                        ),
                          UiTile(
                          'assets/images/bible_plus.jpg',
                          'Zoho',
                          'www.Zoho.com',
                        ),
                        
                        // add more tiles here...
                      ],
                    ),
                  ),
                ),
              ],
            ),
      bottomNavigationBar: CustomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 1) {
            // Navigate into SettingsPage
            Navigator.of(context).pushNamed(SettingsPage.routeName);
          } else {
            // (Optional) handle re-selecting the Tiles tab
            setState(() => _currentIndex = index);
          }
        },
      ),
    );
  }
}
