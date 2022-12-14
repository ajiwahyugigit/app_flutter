import 'package:apps_flutter/pages/splash_page.dart';
import 'package:apps_flutter/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      home: const SplashPage(),
    );
  }
}
