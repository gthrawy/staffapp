import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UiTile extends StatelessWidget {
  final String imagePath;
  final String tileDesc;
  final String url;

  const UiTile(
    this.imagePath,
    this.tileDesc,
    this.url, {
    super.key,
  });

  Future<void> _launchURL(BuildContext context) async {
    // Ensure URL is valid
    String link = url;
    if (!link.startsWith(RegExp(r'https?://'))) {
      link = 'https://$link';
    }

    final uri = Uri.tryParse(link);
    if (uri == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid URL: $url')),
      );
      return;
    }

    if (!await canLaunchUrl(uri)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $link')),
      );
      return;
    }

    await launchUrl(uri, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    final tileWidth = deviceSize.width / 2.4;

    // this is for the Tile
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: InkWell(
        onTap: () => _launchURL(context),
        borderRadius: BorderRadius.circular(20),
        child: Ink(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            border: Border.all(color: const Color.fromARGB(255, 27, 27, 27)),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Theme.of(context).shadowColor,
                offset: const Offset(3, 3),
              ),
            ],
          ),
          width: tileWidth,
          height: tileWidth * 1.3, 
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              // this is for Image 
              Expanded(
                flex: 6,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(1.0),
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 8),

              //this is the tile Description
              Expanded(
                flex: 2,
                child: Center(
                  child: Text(
                    tileDesc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'PlayfairDisplay',
                      fontWeight: FontWeight.w700,
                      fontSize: 22,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),

              const SizedBox(height: 4),

              // this is the URL link
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () => _launchURL(context),
                  child: Text(
                    url,
                    style: TextStyle(
                      color:Colors.blue,
                      decoration: TextDecoration.underline,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// pubspec.yaml:
// dependencies:
//   url_launcher: ^6.1.5
