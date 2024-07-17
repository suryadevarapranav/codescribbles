import 'package:flutter/material.dart';
import 'package:todolistapp/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
          // default color would be color specified here...
          primarySwatch:
              Colors.yellow), // ThemeData isn't a compile time-constant..
    );
  }
}
