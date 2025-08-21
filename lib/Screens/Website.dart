import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebsitePage extends StatefulWidget {
  static const routeName = '/website';
  final String title;
  final String url;
  const MyWebsitePage({super.key, required this.title, required this.url});

  @override
  State<MyWebsitePage> createState() => _MyWebsitePageState();
}

class _MyWebsitePageState extends State<MyWebsitePage> {
  late final WebViewController _controller;

  // this method is for setting fullscreen mode and setting the user agent

  @override
  void initState() {
    super.initState();

    final PlatformWebViewControllerCreationParams params =
        const PlatformWebViewControllerCreationParams();
    _controller = WebViewController.fromPlatformCreationParams(params)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.transparent)
      ..setUserAgent(
        'Mozilla/5.0 (Linux; Android 10; Mobile) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.66 Mobile Safari/537.36',
      )
      ..loadRequest(Uri.parse(widget.url))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) {
            _controller.runJavaScript(
              "let meta = document.querySelector('meta[name=viewport]'); if (meta) { meta.setAttribute('content', 'width=device-width, initial-scale=1, maximum-scale=1'); } else { meta = document.createElement('meta'); meta.name = 'viewport'; meta.content = 'width=device-width, initial-scale=1, maximum-scale=1'; document.head.appendChild(meta); }",
            );
          },
        ),
      );
  }

  // This method is called when the widget is disposed
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: SizedBox.expand(child: WebViewWidget(controller: _controller)),
    );
  }
}
