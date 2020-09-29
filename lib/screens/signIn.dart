import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:project1/model/user_model.dart';
import 'package:project1/screens/First.dart';
import 'package:project1/utility/my_style.dart';
import 'package:project1/utility/nomal_dialog.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  //Field
  String user, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: Container( // พื้นหลัง
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: <Color>[Colors.white, MyStyle().primaryColor],
            center: Alignment(0, -0.3),
            radius: 1.0, //กำหนดความสว่างพื้นหลัง
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            // แก้แถบสีเหลือง ให้สกอหน้าจอได้
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                MyStyle().showLogo(),
                MyStyle().showTitle('Travel'),
                MyStyle().mySizebox(),
                userForm(), 
                MyStyle().mySizebox(),
                passwordForm(),
                MyStyle().mySizebox(),
                loginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget loginButton() => Container( //ปุ่ม login
        child: RaisedButton(
          color: MyStyle().darkColor,
          onPressed: () {
            if (user == null ||
                user.isEmpty ||
                password == null ||
                password.isEmpty) {
              normalDialog(context, 'มีช่องว่าง กรุณากรอกให้ครบ');
            } else {
              checkAuthen();
            }
          },
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  Future<Null> checkAuthen() async {
    String url =
        'http://10.0.2.2/traditional/getUserWhereUser.php?isAdd=true&User=$user';
    try {
      Response response = await Dio().get(url);
      print('res = $response');

      var result = json.decode(response
          .data); // แปลงรหัสจากชื่อที่เป็นภาษาไทยไม่ให้เป็นภาษาต่างด้าว จาก \u0e2a\u0e21\u0e1b\u0e2d\u0e07 ให้เป็นภาษาไทย
      print('result = $result');

      for (var map in result) {
        UserModel userModel = UserModel.fromJson(map);
        if (password == userModel.password) {
          MaterialPageRoute route = MaterialPageRoute(
            builder: (context) => First(),
          );
          Navigator.pushAndRemoveUntil(context, route, (route) => false);
        } else {
          normalDialog(context, 'รหัสผ่านไม่ถูกต้อง กรุณาลองใหม่');
        }
      }
    } catch (e) {}
  }

  Widget userForm() => Container( // ช่องเก็บค่าต่างๆ
        width: 250.0,
        child: TextField(
          onChanged: (value) => user = value.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.account_box,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'User:',
            // ใส่กรอบ ช่อง login
            enabledBorder: OutlineInputBorder( // ถ้าอยู่ในสภาพโฟกัส
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor)),
          ),
        ),
      );

  Widget passwordForm() => Container(
        width: 250.0,
        child: TextField(
          onChanged: (value) => password = value.trim(),
          obscureText: true, // ทำให้ password เป็น star
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.lock,
              color: MyStyle().darkColor,
            ),
            labelStyle: TextStyle(color: MyStyle().darkColor),
            labelText: 'Password:',
            // ใส่กรอบ ช่อง login
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().darkColor)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyStyle().primaryColor)),
          ),
        ),
      );
}
