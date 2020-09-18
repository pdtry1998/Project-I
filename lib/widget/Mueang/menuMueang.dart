import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/widget/Mueang/Icons/menuOne.dart';
import 'package:project1/widget/Mueang/Icons/menuThree.dart';
import 'package:project1/widget/Mueang/Icons/menuTwo.dart';

class Menu_Mueang extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('อำเภอเมือง'),
      ),
      body: Container(
        padding: EdgeInsets.all(30), // ตัวขยายให้คอลัมไอค่อนโฮม
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              //ไอค่อนแรก
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.black38,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize
                        .min, //ทำให้ไอคอนกับตัวอักษรมาอยู่ตรงกลางในคอลัมที่สร้าง

                    children: <Widget>[
                      Icon(
                        Icons.beach_access,
                        size: 70.0,
                        color: Colors.red,
                      ),
                      Text("สถานที่ท่องเที่ยว",
                          style: new TextStyle(fontSize: 20.0)),
                      ListTile(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext) => MenuOne())),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              //ไอค่อน2
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.black38,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize
                        .min, //ทำให้ไอคอนกับตัวอักษรมาอยู่ตรงกลางในคอลัมที่สร้าง

                    children: <Widget>[
                      Icon(
                        Icons.fastfood,
                        size: 70.0,
                        color: Colors.orangeAccent,
                      ), // ได้สร้างไว้แล้วจากตัวแปรด้านบน
                      Text("ร้านอาหาร",
                          style: new TextStyle(
                              fontSize:
                                  20.0)), // title ก็ได้สร้างไว่แล้วจากตัวแปรด้านบน
                      ListTile(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext) => MenuTwo())),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              //ไอค่อน3
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.black38,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize
                        .min, //ทำให้ไอคอนกับตัวอักษรมาอยู่ตรงกลางในคอลัมที่สร้าง

                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        size: 70.0,
                        color: Colors.green,
                      ), // ได้สร้างไว้แล้วจากตัวแปรด้านบน
                      Text("แหล่งช้อปปิ้ง",
                          style: new TextStyle(
                              fontSize:
                                  20.0)), // title ก็ได้สร้างไว่แล้วจากตัวแปรด้านบน
                      ListTile(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext) => MenuThree())),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Card(
              //ไอค่อน4
              margin: EdgeInsets.all(8),
              child: InkWell(
                onTap: () {},
                splashColor: Colors.black38,
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize
                        .min, //ทำให้ไอคอนกับตัวอักษรมาอยู่ตรงกลางในคอลัมที่สร้าง

                    children: <Widget>[
                      Icon(
                        Icons.local_bar,
                        size: 70.0,
                        color: Colors.deepPurple,
                      ), // ได้สร้างไว้แล้วจากตัวแปรด้านบน
                      Text("ที่เที่ยวกลางคืน",
                          style: new TextStyle(
                              fontSize:
                                  20.0)), // title ก็ได้สร้างไว่แล้วจากตัวแปรด้านบน
                      ListTile(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (BuildContext) => MenuOne())),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
