// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gky_project/pages/splash_screen.dart';
import 'package:gky_project/utils/mytheme.dart';

import 'pages/home_page.dart';

void main(List<String> args) {
  runApp(const myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: MyTheme.myLightTheme,
      home: SplashScreen(),
    );
  }
}
