import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyWebsitePage extends StatefulWidget {
  static const routeName = '/website';
final String title;
  final String url;
const MyWebsitePage({
    super.key,
    required this.title,
    required this.url,
  });

  @override
  State<MyWebsitePage> createState() => _MyWebsitePageState();
}

class _MyWebsitePageState extends State<MyWebsitePage> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    final PlatformWebViewControllerCreationParams params =
        const PlatformWebViewControllerCreationParams();
    _controller = WebViewController.fromPlatformCreationParams(params)
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://envisioncleveland.org'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Envision Cleveland')),
      body: WebViewWidget(controller: _controller),
    );
  }
}

