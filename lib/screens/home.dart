import 'package:flutter/material.dart';
import 'package:project1/screens/signIn.dart';
import 'package:project1/screens/signUp.dart';
import 'package:project1/utility/my_style.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: showDrawer(),
        body: Container(
          margin: MediaQuery.of(context)
              .padding, //ปรับระยะขอบบนไม่ให้ล้ำไปที่ไอค่อนข้างบน
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "images/LOGO.png",
                height: 400,
                width: 400,
              ),
            ],
          ),
        ));
  }

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: <Widget>[showHeadDrawer(), signInMenu(), signUpMenu()],
        ),
      );

  ListTile signInMenu() {
    return ListTile(
      leading: Icon(Icons.account_box),
      title: Text('Sign In'),
      onTap: () {
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => SignIn());
        Navigator.push(context, route);
      },
    );
  }

  ListTile signUpMenu() {
    return ListTile(
      leading: Icon(Icons.create),
      title: Text('Sign Up'),
      onTap: () {
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => SignUp());
        Navigator.push(context, route);
      },
    );
  }

  UserAccountsDrawerHeader showHeadDrawer() {
    return UserAccountsDrawerHeader(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/pic1.jpg'), fit: BoxFit.cover)),
        currentAccountPicture: MyStyle().showLogo(),
        accountName: Text('Guest'),
        accountEmail: Text('Please Login'));
  }
}
