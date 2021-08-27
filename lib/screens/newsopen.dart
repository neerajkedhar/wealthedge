import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsOpen extends StatefulWidget {
  NewsOpen(this.url, {Key? key}) : super(key: key);
  var url;
  @override
  _NewsOpenState createState() => _NewsOpenState();
}

class _NewsOpenState extends State<NewsOpen> {
  WebViewController? _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Color(0xff212121),
          child: WebView(
              initialUrl: widget.url,
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webviewcontroller) {
                _controller = webviewcontroller;
              }),
        ));
  }
}
