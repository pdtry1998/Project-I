import 'package:flutter/material.dart';
// import 'package:project1/screens/home.dart';
// import 'package:project1/utility/my_style.dart';

class MenuFour extends StatefulWidget {
  @override
  _MenuFourState createState() => _MenuFourState();
}

class _MenuFourState extends State<MenuFour> {
  // ทำปุ่ม logout มุม ขวามือ
  Future<Null> signOutProcess() async {
    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => MenuFour(),
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
        title: Text("555555555"),
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
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("JOKER", "8.5/10", "images/pic1.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Avengers", "8.5/10", "images/pic1.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Terminator", "8.5/10", "images/pic1.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Terminator", "8.5/10", "images/pic1.jpg"),
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
              height: 250.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("JOKER", "7.5/10", "images/pic1.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child:
                        MovieCard("Interstellar", "9.5/10", "images/pic1.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Terminator", "8.5/10", "images/pic1.jpg"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: MovieCard("Terminator", "8.5/10", "images/pic1.jpg"),
                  ),
                  SizedBox(
                    height: 22.0,
                  )
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
              fit: BoxFit.fill,
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
                fontSize: 26.0),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 5.0),
          Text(
            rate,
            style: TextStyle(color: Colors.red, fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
