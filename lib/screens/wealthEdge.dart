import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WealthEdgeWP extends StatefulWidget {
  const WealthEdgeWP({Key? key}) : super(key: key);

  @override
  _WealthEdgeWPState createState() => _WealthEdgeWPState();
}

class _WealthEdgeWPState extends State<WealthEdgeWP> {
  WebViewController? _controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff212121),
      child: WebView(
          initialUrl: "https://www.wealthedge4u.com/",
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController webviewcontroller) {
            _controller = webviewcontroller;
          }),
    );
  }
}
