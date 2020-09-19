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
        // appBar: AppBar(
        //   title: Text('Home'),
        //   actions: <Widget>[
        //     IconButton(
        //         icon: Icon(Icons.exit_to_app),
        //         onPressed: () => signOutProcess())
        //   ],
        // ),
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  title: Text('HOME'),
                  //automaticallyImplyLeading: true,
                  backgroundColor: Colors.transparent,
                  expandedHeight: 350.0,
                  // floating: false,
                  //pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      collapseMode: CollapseMode.pin,
                      background: Image.asset(
                        "images/one.png",
                        fit: BoxFit.fill,
                      )),
                ),
              ];
            },
            body: Column(
              children: <Widget>[
                SizedBox(height: 10.0),
                new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                            left: 10.0,
                          ),
                          child: new Text(
                            "PHUKET ",
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 30.0,
                            ),
                          )),
                    ]),
                SizedBox(height: 5.0),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(
                        "จังหวัดภูเก็ต เป็นจังหวัดเดียวที่มีลักษณะภูมิประเทศเป็นเกาะ และเป็นแหล่งท่องเที่ยวที่มี ชื่อเสียงระดับโลก ซึ่งเป็นที่รู้จักในเรื่องของหาดทรายที่สวยงาม น้ำทะเลใส ท้องทะเลที่งดงามเหมาะสำหรับ การดำน้ำ รวมทั้งมีสิ่งอำนวยความสะดวก รองรับนักท่องเที่ยวอย่างครบครัน  ในอดีตส่วนใหญ่ คนที่มีความ เจริญรุ่งเรือง ทางเศรษฐกิจจะเป็นคนจีน ที่ทำเหมืองแร่ และพ่อค้าคนกลางขายยางพารา ความเจริญที่มา จากคนจีน ซึ่งเห็นได้จากศาลเจ้าจีน ที่ตั้งอยู่เรียงรายในตัวเมืองภูเก็ต เพื่อฉลองเทศกาลถือศีลกินผักในเดือน ตุลาคมของทุกปี  แต่ปัจจุบันความรุ่งเรืองทางเศรษฐกิจ มาจากอุตสาหกรรมการท่องเที่ยว ที่พัฒนาขึ้นอย่าง ต่อเนื่อง ซึ่งเปรียบได้กับจำนวนนักท่องเที่ยวจากทั่วโลก ที่ค้นพบถึงความงดงามของแสงอาทิตย์ และทะเลที่ ภูเก็ตมีไว้รองรับ   ",
                        style: TextStyle(color: Colors.grey[600]),
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            )));
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
            MaterialPageRoute(builder: (value) => Menu_Mueang());
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
