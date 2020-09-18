import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Colors.blue.shade900;
  Color primaryColor = Colors.teal.shade200;
  Color darkColor2 = Colors.white;

  SizedBox mySizebox() => SizedBox(
        width: 8.0,
        height: 16.0,
      );

  Text showTitle(String title) => Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.blue.shade900,
          fontWeight: FontWeight.bold,
        ),
      );

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      image: DecorationImage(
          image: AssetImage('images/pic1.jpg'), fit: BoxFit.cover),
    );
  }

  Container showLogo() {
    return Container(
      width: 300.0,
      child: Image.asset('images/LOGO.png'),
    );
  }

  MyStyle();
}
