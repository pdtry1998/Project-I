import 'package:flutter/material.dart';
import 'package:project1/screens/home.dart';

void main() {
  runApp(MyApp()); // การเขียนแมดทอดแบบเต็ม
}

//main() =>runApp(MyApp()) ; แบบย่อ

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      title: 'Travel',
      home: Home(),
    );
  }
}
