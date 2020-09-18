import 'package:flutter/material.dart';
// import 'package:project1/main.dart';
import 'package:project1/screens/home.dart';
// import 'package:project1/screens/signIn.dart';
// import 'package:project1/screens/signUp.dart';
import 'package:project1/utility/my_style.dart';
import 'package:project1/widget/menuKathu.dart';
import 'package:project1/widget/Mueang/Icons/menuOne.dart';
import 'package:project1/widget/Mueang/menuMueang.dart';
import 'package:project1/widget/menuThalang.dart';

class First extends StatefulWidget {
  //Firld

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  Future<Null> signOutProcess() async {
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => Home(),
    );
    Navigator.pushAndRemoveUntil(context, route, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: showDrawer(),
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app), onPressed: () => signOutProcess())
        ],
      ),
    );
  }

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: <Widget>[
            showHeadDrawer(),
            firstMenu(),
            secondMenu(),
            thirdMenu(),
            signOutMenu()
          ],
        ),
      );

  ListTile firstMenu() {
    return ListTile(
      leading: Icon(Icons.add_to_photos),
      title: Text('อำเภอเมือง'),
      onTap: () {
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => MenuOne());
        Navigator.push(context, route);
      },
    );
  }

  ListTile secondMenu() {
    return ListTile(
      leading: Icon(Icons.cake),
      title: Text('อำเภอกะทู้'),
      onTap: () {
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => MenuKathu());
        Navigator.push(context, route);
      },
    );
  }

  ListTile thirdMenu() {
    return ListTile(
      leading: Icon(Icons.android),
      title: Text('อำเภอถลาง'),
      onTap: () {
        MaterialPageRoute route =
            MaterialPageRoute(builder: (value) => MenuThalang());
        Navigator.push(context, route);
      },
    );
  }

  ListTile signOutMenu() {
    return ListTile(
      leading: Icon(Icons.exit_to_app),
      title: Text('Sign Out'),
      subtitle: Text('Sing Out และ กลับไปหน้าแรก'),
      onTap: () {
        MaterialPageRoute route = MaterialPageRoute(builder: (value) => Home());
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
        accountName: Text(
          'Name Login',
          style: TextStyle(color: MyStyle().darkColor2),
        ),
        accountEmail: Text('Login'));
  }
}
