import 'package:flutter/material.dart';

import 'widgets/web_view_container.dart';

class WebViewPage extends StatelessWidget {
  // final String url = 'http://info.cern.ch';
  final String url = 'https://google.com.ua';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewContainer(url),
    );
  }
}
