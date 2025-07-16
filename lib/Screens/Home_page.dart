import 'package:flutter/material.dart';
import 'package:staffapp/Screens/Website.dart';
import 'package:staffapp/Widgets/App_bar.dart';
import 'package:staffapp/Widgets/Nav_bar.dart';
import 'package:staffapp/Widgets/ui_tile.dart';

class TilesPage extends StatefulWidget {
  static const routeName = '/tiles';

  const TilesPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TilesPageState createState() => _TilesPageState();
}

class _TilesPageState extends State<TilesPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
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
            children: [
              const UiTile(
                'assets/images/Canva-logo.webp',
                'Canva',
                'www.canva.com',
                
              ),
              const UiTile(
                'assets/images/calendar-logo.webp',
                'Calendar',
                'calendar.google.com/calendar/u/0/r',
              ),
              const UiTile(
                'assets/images/drive logo.png',
                'Drive',
                'drive.google.com/drive/folders/0B--ZoBdvtaJxMUY0dlFkWVBSZnc',
              ),
              const UiTile(
                'assets/images/google_photo_logo_icon.webp',
                'Photos',
                'drive.google.com/drive/folders/0B--ZoBdvtaJxMUY0dlFkWVBSZnc',
              ),
              const UiTile(
                'assets/images/Slack_icon_logo.webp',
                'Slack',
                'slack.com/signin#/signin',
              ),
             UiTile(
  'assets/images/receipts_submission.webp',
  'Submit Receipt',
  'https://creatorapp.zohopublic.com/...',
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyWebsitePage(
          title: 'Submit Receipt',
          url: 'https://creatorapp.zohopublic.com/',
        ),
      ),
    );
  },
),
              const UiTile(
                'assets/images/time-off.jpeg',
                'Time-Off',
                'creatorapp.zohopublic.com/envisioncle/ec-time-off-requests/form-perma/Time_Off_Request/Tt4ZdYrXgFJQRJZ6ZtnBAdwV7WGuavbVd0aPea9WGwp6hCKAwNK7tuAM8KXUqXpqTRX1rR0DrFXZeNVffvWb3m8CGVyHYRtK8FPC',
              ),
              const UiTile(
                'assets/images/trello-logo-png_seeklogo-340725.png',
                'Trello',
                'trello.com/w/envisionclevelandcma/home',
              ),
               const UiTile(
                'assets/images/zoho-creator-social-preview.png',
                'Zoho',
                'creator.zoho.com/userhome/envisioncle/dashboard',
              ),
    
              // add more 
            ],
          ),
const SizedBox(height: 30),
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
                'assets/images/images (1).jpeg',
                'Grant Advance',
                'https://platform.grantadvance.com/',
              ),
              UiTile(
                'assets/images/0x0.png',
                'Paychex',
                'www.canva.com',
              ),
              UiTile(
                'assets/images/quickbooks-online-gocanvas-integration-2.webp',
                'QB',
                'https://myapps.paychex.com/landing_remote/login.do?lang=en',
              ),
            ],
          ),

          const SizedBox(height: 30),
            Text(
            
            'Business & Technology',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontWeight: FontWeight.bold,
              fontSize: 30,
             // color: Colors.white,
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
                'assets/images/UniFi.webp',
                'UniFi',
                'https://unifi.ui.com/',
              ),
              UiTile(
                'assets/images/images.png',
                'Wix.com',
                'https://manage.wix.com/dashboard/dae7e9a4-40d9-4e1f-bfe0-312b929bb5f9/home',
              ),
              UiTile(
                'assets/images/Wyze_logo.png',
                'Wyze',
                'https://my.wyze.com/live',
              ),
              UiTile(
                'assets/images/tickets.jpg',
                'Tickets',
                'https://envisioncleveland.zohodesk.com/portal/en/newticket',
              ),
                UiTile(
                'assets/images/Zoho_vault.png',
                'Vault',
                'www.canva.com',
              
              ),
                UiTile(
                'assets/images/filestorage_logo.jpeg',
                'Synology',
                'https://accounts.zoho.com/signin?servicename=ZohoVault&signupurl=https://www.zoho.com/vault/signup.html&serviceurl=https://vault.zoho.com',
              
              ),
            ],
          ),
  const SizedBox(height: 30),
            Text(
            
            'Volunteer Resources',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'PlayfairDisplay',
              fontWeight: FontWeight.bold,
              fontSize: 30,
             // color: Colors.white,
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
                'assets/images/images (1).png',
                'Jotform',
                'https://www.jotform.com/myforms/',
              ),
              UiTile(
                'assets/images/Protect_Minstry.png',
                'Ministry Mobilizer',
                'https://www.mobilizemyministry.com/login/Account/Login',
              ),
              UiTile(
                'assets/images/Mailchimp-logo-freelance-stack.png',
                'MailChimp',
                'https://mailchimp.com/',
              ),
              UiTile(
                'assets/images/volunteeer_service.jpg',
                'Volunteer Service',
                'https://creatorapp.zohopublic.com/envisioncle/envision-cleveland/form-perma/Volunteer_Service/z7ffrC1bW0kj0aN7ZjtPqBgDNPdsZxjaOZaaGvAAPuke0dZsu1pXb6VRjnpQkxgKeZ2eDjHZZnQPjCu5ESHmw7DBjHAzRF6CHF8Y',
              ),
              
            ],
          ),



           
        ],

        
        
      ),
      bottomNavigationBar: CustomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 1) {
            // Navigate SettingsPage
            Navigator.pushNamed(context, MyWebsitePage.routeName);
          } else {
            // handle other tabs
            setState(() => _currentIndex = index);
          }
        },
      ),
    );
  }
}