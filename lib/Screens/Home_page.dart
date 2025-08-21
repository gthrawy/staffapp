import 'package:flutter/material.dart';
import 'package:staffapp/Screens/Website.dart';
import 'package:staffapp/Widgets/App_bar.dart';
import 'package:staffapp/Widgets/Nav_bar.dart';
import 'package:staffapp/Widgets/ui_tile.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:staffapp/Screens/password_gate.dart';

class TilesPage extends StatefulWidget {
  static const routeName = '/tiles';

  const TilesPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TilesPageState createState() => _TilesPageState();
}

class _TilesPageState extends State<TilesPage> {
  int _currentIndex = 0;

  /// Signs the user out of Amplify and returns to the login flow.
  Future<void> _signOut() async {
    try {
      await Amplify.Auth.signOut();
      Navigator.pushReplacementNamed(context, PasswordGatePage.routeName);
    } on AuthException catch (e) {
      //safePrint('Sign out failed: ${e.message}');
    }
  }

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
            physics:
                const NeverScrollableScrollPhysics(), // disable grid's own scrolling
            children: [
              UiTile(
                'assets/images/Canva-logo.webp',
                'Canva',
                'https://www.canva.com',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Canva',
                        url: 'https://www.canva.com',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/calendar-logo.webp',
                'Calendar',
                'https://calendar.google.com/calendar/u/0/r',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Calendar',
                        url: 'https://calendar.google.com/calendar/u/0/r',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/drive logo.png',
                'Drive',
                'https://drive.google.com/drive/folders/0B--ZoBdvtaJxMUY0dlFkWVBSZnc',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Drive',
                        url:
                            'https://drive.google.com/drive/folders/0B--ZoBdvtaJxMUY0dlFkWVBSZnc',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/google_photo_logo_icon.webp',
                'Photos',
                'https://drive.google.com/drive/folders/0B--ZoBdvtaJxMUY0dlFkWVBSZnc',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Photos',
                        url:
                            'https://drive.google.com/drive/folders/0B--ZoBdvtaJxMUY0dlFkWVBSZnc',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/Slack_icon_logo.webp',
                'Slack',
                'https://slack.com/signin#/signin',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Slack',
                        url: 'https://slack.com/signin#/signin',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/receipts_submission.webp',
                'Submit Receipt',
                'https://creatorapp.zohopublic.com/envisioncle/ec-submit-receipts/form-perma/Submit_Receipt/xMyBhetJxNTqW0ayE2yTzJ3XtGGuPXSJ4rw8edQUvnMJeuOzY3RmP0DvZmndJzgOWnjfQRF6maEsFDdna337enXCdDRMM5Qzm842',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Submit Receipt',
                        url:
                            'https://creatorapp.zohopublic.com/envisioncle/ec-submit-receipts/form-perma/Submit_Receipt/xMyBhetJxNTqW0ayE2yTzJ3XtGGuPXSJ4rw8edQUvnMJeuOzY3RmP0DvZmndJzgOWnjfQRF6maEsFDdna337enXCdDRMM5Qzm842',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/time-off.jpeg',
                'Time-Off',
                'https://creatorapp.zohopublic.com/envisioncle/ec-time-off-requests/form-perma/Time_Off_Request/Tt4ZdYrXgFJQRJZ6ZtnBAdwV7WGuavbVd0aPea9WGwp6hCKAwNK7tuAM8KXUqXpqTRX1rR0DrFXZeNVffvWb3m8CGVyHYRtK8FPC',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Time-Off',
                        url:
                            'https://creatorapp.zohopublic.com/envisioncle/ec-time-off-requests/form-perma/Time_Off_Request/Tt4ZdYrXgFJQRJZ6ZtnBAdwV7WGuavbVd0aPea9WGwp6hCKAwNK7tuAM8KXUqXpqTRX1rR0DrFXZeNVffvWb3m8CGVyHYRtK8FPC',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/trello-logo-png_seeklogo-340725.png',
                'Trello',
                'https://trello.com/w/envisionclevelandcma/home',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Trello',
                        url: 'https://trello.com/w/envisionclevelandcma/home',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/zoho-creator-social-preview.png',
                'Zoho',
                'https://creator.zoho.com/userhome/envisioncle/dashboard',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Zoho',
                        url:
                            'https://creator.zoho.com/userhome/envisioncle/dashboard',
                      ),
                    ),
                  );
                },
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
            physics:
                const NeverScrollableScrollPhysics(), // disable grid's own scrolling
            children: [
              UiTile(
                'assets/images/images (1).jpeg',
                'Grant Advance',
                'https://platform.grantadvance.com/',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Grant Advance',
                        url: 'https://platform.grantadvance.com/',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/0x0.png',
                'Paychex',
                'https://myapps.paychex.com/landing_remote/login.do?lang=en',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Paychex',
                        url:
                            'https://myapps.paychex.com/landing_remote/login.do?lang=en',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/quickbooks-online-gocanvas-integration-2.webp',
                'QB',
                'https://qbo.intuit.com/app/homepage?locale=en-us',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'QB',
                        url: 'https://qbo.intuit.com/app/homepage?locale=en-us',
                      ),
                    ),
                  );
                },
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
            physics:
                const NeverScrollableScrollPhysics(), // disable grid's own scrolling
            children: [
              UiTile(
                'assets/images/UniFi.webp',
                'UniFi',
                'https://unifi.ui.com/',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'UniFi',
                        url: 'https://unifi.ui.com/',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/images.png',
                'Wix.com',
                'https://manage.wix.com/dashboard/dae7e9a4-40d9-4e1f-bfe0-312b929bb5f9/home',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Wix.com',
                        url:
                            'https://manage.wix.com/dashboard/dae7e9a4-40d9-4e1f-bfe0-312b929bb5f9/home',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/Wyze_logo.png',
                'Wyze',
                'https://my.wyze.com/live',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Wyze',
                        url: 'https://my.wyze.com/live',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/tickets.jpg',
                'Tickets',
                'https://envisioncleveland.zohodesk.com/portal/en/newticket',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Tickets',
                        url:
                            'https://envisioncleveland.zohodesk.com/portal/en/newticket',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/Zoho_vault.png',
                'Vault',
                'https://accounts.zoho.com/signin?servicename=ZohoVault&signupurl=https://www.zoho.com/vault/signup.html&serviceurl=https://vault.zoho.com',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Vault',
                        url:
                            'https://accounts.zoho.com/signin?servicename=ZohoVault&signupurl=https://www.zoho.com/vault/signup.html&serviceurl=https://vault.zoho.com',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/filestorage_logo.jpeg',
                'Synology',
                'http://192.168.0.64:5000/?launchApp=SYNO.SDS.Drive.BasicInstance&launchParam=link%3D13znW0A26KU7BJHfsU6o9yOXpe0uAVcw#/signin',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Synology',
                        url:
                            'http://192.168.0.64:5000/?launchApp=SYNO.SDS.Drive.BasicInstance&launchParam=link%3D13znW0A26KU7BJHfsU6o9yOXpe0uAVcw#/signin',
                      ),
                    ),
                  );
                },
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
            padding: const EdgeInsets.all(10),
            crossAxisCount: 3,
            childAspectRatio: 13 / 13.5,
            mainAxisSpacing: 12,
            crossAxisSpacing: 1,
            shrinkWrap: true, // size to children
            physics:
                const NeverScrollableScrollPhysics(), // disable grid's own scrolling
            children: [
              UiTile(
                'assets/images/images (1).png',
                'Jotform',
                'https://www.jotform.com/myforms/',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Jotform',
                        url: 'https://www.jotform.com/myforms/',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/Protect_Minstry.png',
                'Ministry Mobilizer',
                'https://www.mobilizemyministry.com/login/Account/Login',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Ministry Mobilizer',
                        url:
                            'https://www.mobilizemyministry.com/login/Account/Login',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/Mailchimp-logo-freelance-stack.png',
                'Chimp',
                'https://mailchimp.com/',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Chimp',
                        url: 'https://mailchimp.com/',
                      ),
                    ),
                  );
                },
              ),
              UiTile(
                'assets/images/volunteeer_service.jpg',
                'Volunteer Service',
                'https://creatorapp.zohopublic.com/envisioncle/envision-cleveland/form-perma/Volunteer_Service/z7ffrC1bW0kj0aN7ZjtPqBgDNPdsZxjaOZaaGvAAPuke0dZsu1pXb6VRjnpQkxgKeZ2eDjHZZnQPjCu5ESHmw7DBjHAzRF6CHF8Y',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyWebsitePage(
                        title: 'Volunteer Service',
                        url:
                            'https://creatorapp.zohopublic.com/envisioncle/envision-cleveland/form-perma/Volunteer_Service/z7ffrC1bW0kj0aN7ZjtPqBgDNPdsZxjaOZaaGvAAPuke0dZsu1pXb6VRjnpQkxgKeZ2eDjHZZnQPjCu5ESHmw7DBjHAzRF6CHF8Y',
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _signOut,
              icon: const Icon(Icons.logout),
              label: const Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                iconColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: CustomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyWebsitePage(
                  title: 'Envision Cleveland',
                  url: 'https://envisioncleveland.org',
                ),
              ),
            );
          } else {
            setState(() => _currentIndex = index);
          }
        },
      ),
    );
  }
}
