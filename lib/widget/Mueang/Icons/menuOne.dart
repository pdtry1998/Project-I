import 'package:flutter/material.dart';
import 'package:project1/screens/First.dart';
import 'package:project1/widget/Mueang/Icons/menuFour.dart';
// import 'package:project1/screens/home.dart';
// import 'package:project1/utility/my_style.dart';

class MenuOne extends StatefulWidget {
  @override
  _MenuOneState createState() => _MenuOneState();
}

class _MenuOneState extends State<MenuOne> {
  // ทำปุ่ม logout มุม ขวามือ
  Future<Null> signOutProcess() async {
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => MenuOne(),
    );
    Navigator.pushAndRemoveUntil(context, route, (route) => false);
  }

  @override
  Widget build(BuildContext context)
  // {
  //   return Scaffold(
  //     drawer: showDrawer(),
  //     appBar: AppBar(
  //       title: Text('อำเภอเมือง'),
  //       actions: <Widget>[
  //         IconButton(
  //             icon: Icon(Icons.exit_to_app), onPressed: () => signOutProcess())
  //       ],
  //     ),
  //   );
  // }

  // Drawer showDrawer() => Drawer(
  //       child: ListView(
  //         children: <Widget>[
  //           showHeadDrawer(),
  //         ],
  //       ),
  //     );

  // UserAccountsDrawerHeader showHeadDrawer() {
  //   return UserAccountsDrawerHeader(
  //       decoration: BoxDecoration(
  //           image: DecorationImage(
  //               image: AssetImage('images/pic1.jpg'), fit: BoxFit.cover)),
  //       currentAccountPicture: MyStyle().showLogo(),
  //       accountName: Text(
  //         'Name Login',
  //         style: TextStyle(color: MyStyle().darkColor2),
  //       ),
  //       accountEmail: Text('Login'));
  // }
//}
  {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.teal,
        title: Text("อำเภอเมือง"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          )
        ],
      ),
      //Creating the Chip list
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "ดั้งเดิม",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              width: double.infinity,
              height: 300.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: MovieCard("เย็นตาโฟสามพี่น้อง",
                            "ถนน ดีบุก ภูเก็ต", "images/food1.jpg"),
                      ),
                      RaisedButton(
                          child: Text('Enter'),
                          onPressed: () {
                            Navigator.push(
                                // ส่วนที่ทำให้กดลิ้งไปหน้า MenuDistrict
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        First())); // เป็นการลิ้งแบบที่ 2 ไปยังหน้า MenuDistrict
                          })
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: MovieCard(
                            "หมี่สามสาว", "ถนน ตะกั่วป่า", "images/food2.jpg"),
                      ),
                      RaisedButton(
                          child: Text('Enter'),
                          onPressed: () {
                            Navigator.push(
                                // ส่วนที่ทำให้กดลิ้งไปหน้า MenuDistrict
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        First())); // เป็นการลิ้งแบบที่ 2 ไปยังหน้า MenuDistrict
                          })
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: MovieCard(
                            "ลอดช่อง หล่องโรง", "ถนนพัฒนา", "images/food3.jpg"),
                      ),
                      RaisedButton(
                          child: Text('Enter'),
                          onPressed: () {
                            Navigator.push(
                                // ส่วนที่ทำให้กดลิ้งไปหน้า MenuDistrict
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        First())); // เป็นการลิ้งแบบที่ 2 ไปยังหน้า MenuDistrict
                          })
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: MovieCard(
                            " แม่โบ้ขนมครก", "ถนนเยาวราช", "images/pic1.jpg"),
                      ),
                      RaisedButton(
                          child: Text('Enter'),
                          onPressed: () {
                            Navigator.push(
                                // ส่วนที่ทำให้กดลิ้งไปหน้า MenuDistrict
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        First())); // เป็นการลิ้งแบบที่ 2 ไปยังหน้า MenuDistrict
                          })
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    "ทั่วไป",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.0,
            ),
            Container(
              width: double.infinity,
              height: 300.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: MovieCard("JOKER", "8.5/10", "images/pic1.jpg"),
                      ),
                      RaisedButton(
                          child: Text('Enter'),
                          onPressed: () {
                            Navigator.push(
                                // ส่วนที่ทำให้กดลิ้งไปหน้า MenuDistrict
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        First())); // เป็นการลิ้งแบบที่ 2 ไปยังหน้า MenuDistrict
                          })
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child:
                            MovieCard("Avengers", "8.5/10", "images/pic1.jpg"),
                      ),
                      RaisedButton(
                          child: Text('Enter'),
                          onPressed: () {
                            Navigator.push(
                                // ส่วนที่ทำให้กดลิ้งไปหน้า MenuDistrict
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        First())); // เป็นการลิ้งแบบที่ 2 ไปยังหน้า MenuDistrict
                          })
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: MovieCard(
                            "Terminator", "8.5/10", "images/pic1.jpg"),
                      ),
                      RaisedButton(
                          child: Text('Enter'),
                          onPressed: () {
                            Navigator.push(
                                // ส่วนที่ทำให้กดลิ้งไปหน้า MenuDistrict
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        First())); // เป็นการลิ้งแบบที่ 2 ไปยังหน้า MenuDistrict
                          })
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: MovieCard(
                            "Terminator", "8.5/10", "images/pic1.jpg"),
                      ),
                      RaisedButton(
                          child: Text('Enter'),
                          onPressed: () {
                            Navigator.push(
                                // ส่วนที่ทำให้กดลิ้งไปหน้า MenuDistrict
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        First())); // เป็นการลิ้งแบบที่ 2 ไปยังหน้า MenuDistrict
                          })
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget MovieCard(String placeName, String rate, String imgPath) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Card(
            elevation: 0.0,
            child: Image.asset(
              imgPath,
              fit: BoxFit.cover,
              width: 130.0,
              height: 160.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            placeName,
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 20.0),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 5.0),
          Text(
            rate,
            style: TextStyle(color: Colors.blue, fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}
