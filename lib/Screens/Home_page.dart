import 'package:flutter/material.dart';
import 'package:staffapp/Screens/settings_page.dart';
import 'package:staffapp/Widgets/App_bar.dart';
import 'package:staffapp/Widgets/Nav_bar.dart';
import 'package:staffapp/Widgets/ui_tile.dart';

class TilesPage extends StatefulWidget {
  static const routeName = '/tiles';

  const TilesPage({super.key});

  @override
  _TilesPageState createState() => _TilesPageState();
}

class _TilesPageState extends State<TilesPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(title: 'Envision Cleveland Staff'),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        children: [
          Text(
            'Administration',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 13 / 13.5,
            mainAxisSpacing: 12,
            crossAxisSpacing: 1,
            shrinkWrap: true, // size to children
            physics: const NeverScrollableScrollPhysics(), // disable grid's own scrolling
            children: const [
              UiTile(
                'assets/images/Canva-logo.webp',
                'Canva',
                'www.canva.com',
              ),
              UiTile(
                'assets/images/calendar-logo.webp',
                'Calendar',
                'calendar.google.com/calendar/u/0/r',
              ),
              UiTile(
                'assets/images/drive logo.png',
                'Drive',
                'drive.google.com/drive/folders/0B--ZoBdvtaJxMUY0dlFkWVBSZnc',
              ),
              UiTile(
                'assets/images/google_photo_logo_icon.webp',
                'Photos',
                'drive.google.com/drive/folders/0B--ZoBdvtaJxMUY0dlFkWVBSZnc',
              ),
              UiTile(
                'assets/images/Slack_icon_logo.webp',
                'Slack',
                'slack.com/signin#/signin',
              ),
              UiTile(
                'assets/images/receipts_submission.webp',
                'Submit Receipt',
                'https://creatorapp.zohopublic.com/envisioncle/ec-submit-receipts/form-perma/Submit_Receipt/xMyBhetJxNTqW0ayE2yTzJ3XtGGuPXSJ4rw8edQUvnMJeuOzY3RmP0DvZmndJzgOWnjfQRF6maEsFDdna337enXCdDRMM5Qzm842',
              ),
              UiTile(
                'assets/images/time-off.jpeg',
                'Time-Off',
                'creatorapp.zohopublic.com/envisioncle/ec-time-off-requests/form-perma/Time_Off_Request/Tt4ZdYrXgFJQRJZ6ZtnBAdwV7WGuavbVd0aPea9WGwp6hCKAwNK7tuAM8KXUqXpqTRX1rR0DrFXZeNVffvWb3m8CGVyHYRtK8FPC',
              ),
              UiTile(
                'assets/images/trello-logo-png_seeklogo-340725.png',
                'Trello',
                'trello.com/w/envisionclevelandcma/home',
              ),
               UiTile(
                'assets/images/zoho-creator-social-preview.png',
                'Zoho',
                'creator.zoho.com/userhome/envisioncle/dashboard',
              ),
              // add more 
            ],
          ),

          Text(
            
            'Finance',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: Theme.of(context).primaryColor,
            ),
          ),
          const SizedBox(height: 10),
          GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 13 / 13.5,
            mainAxisSpacing: 12,
            crossAxisSpacing: 1,
            shrinkWrap: true, // size to children
            physics: const NeverScrollableScrollPhysics(), // disable grid's own scrolling
            children: const [
              UiTile(
                'assets/images/Canva-logo.webp',
                'Canva',
                'www.canva.com',
              ),
              UiTile(
                'assets/images/Canva-logo.webp',
                'Canva',
                'www.canva.com',
              ),
              UiTile(
                'assets/images/Canva-logo.webp',
                'Canva',
                'www.canva.com',
              ),
            ],
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
            // handle other tabs
            setState(() => _currentIndex = index);
          }
        },
      ),
    );
  }
}
