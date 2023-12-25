import 'package:flutter/material.dart';
import 'main.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  InAppWebViewController? inAppWebViewController;
  double _progress = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web View Page'),
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 400,
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse("https://sketchfab.com/models/1585e5837d034631a748d1a86a846782/embed"),
              ),
              onWebViewCreated: (InAppWebViewController controller) {
                inAppWebViewController = controller;
              },
              onProgressChanged: (InAppWebViewController controller, int progress) {
                setState(() {
                  _progress = progress / 100;
                });
              },
            ),
          ),
          LinearProgressIndicator(value: _progress),
        ],
      ),
    );
  }
}

