import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/first_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/second_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List names = ["Mitch", "Sharon", "Vince"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Routes
      home: FirstPage(),
      routes: {
        '/firstpage': (context) => FirstPage(),
        '/homepage': (context) => HomePage(),
        '/settingspage': (context) => SettingsPage(),
        '/secondpage': (context) => SecondPage()
      },
    );
  }
}
