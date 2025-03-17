import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todolistapp/pages/home_page.dart';

void main() async {
  // initailzing hive...
  await Hive.initFlutter();

  // opening a new box..
  var box = await Hive.openBox('mybox');

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
