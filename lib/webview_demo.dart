library webview_demo;

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewDemo extends StatefulWidget {

  // String key;
  String domainApi;

  WebViewDemo({this.domainApi});


  @override
  _WebViewDemoState createState() => _WebViewDemoState();
}

class _WebViewDemoState extends State<WebViewDemo> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      routes: {
        "/": (_) => new WebviewScaffold(
          url: widget.domainApi ?? "https://contaque.com/about",
          appBar: new AppBar(
            title: new Text("Webview Demo"),
          ),
        ),
      },
    );

  }
}

