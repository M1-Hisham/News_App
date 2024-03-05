import 'package:flutter/material.dart';
import 'package:news_app_api/widgets/webview_builder.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatelessWidget {
  const WebView({super.key, required this.name, required this.url});
  final String url;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
      body: WebViewWidget(
        controller: webViewBuilder(url: url),
      ),
    );
  }
}
