import 'package:flutter/material.dart';
import 'package:ott_platforms_app/screens/home_page.dart';
import 'package:ott_platforms_app/screens/ott_web_view.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
        'WebView': (context) => const WebView(),
      },
    ),
  );
}
