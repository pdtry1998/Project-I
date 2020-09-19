import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyOne();
  }
}

class _MyOne extends State<OnePage> {
  String descriptionText =
      "ที่มาของชื่อร้าน เย็นตาโฟสามพี่น้อง  “เมื่อก่อนนี้ร้านไม่มีชื่อร้าน ขนาดตอนนี้ก็ยังไม่มีป้ายหน้าร้าน แต่ลูกค้าเขาตั้งชื่อร้านให้ว่า “เย็นตาโฟสามพี่น้อง” เพราะเขาเป็นขายกันสามพี่น้อง และเรียกกันปากต่อปากกัน แต่จริงๆ แล้วมีทั้งหมด 5 คนพี่น้อง แต่ขายกันสามคน สูตรเย็นตาโฟได้รับสืบทอดมาจากรุ่นพ่อ นับๆ แล้วก็ขายมานานกว่า 43 ปี”   ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  automaticallyImplyLeading: true,
                  backgroundColor: Colors.transparent,
                  expandedHeight: 300.0,
                  floating: false,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                      centerTitle: true,
                      collapseMode: CollapseMode.pin,
                      background: Image.asset(
                        "images/food1.1.jpg",
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
                            "เย็นตาโฟสามพี่น้อง",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
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
                        "ร้านตั้งอยุ่บน ถนน ดีบุก ด้านขวาทางไปโรงเรียนเทศบาลปลูกปัญญา  , เมืองภูเก็ต , ภูเก็ต ",
                        style: TextStyle(color: Colors.grey[600]),
                      )),
                ),
                SizedBox(
                  height: 20.0,
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.call,
                          size: 50.0,
                          color: Colors.lightBlueAccent,
                        ),
                        Text(
                          "Call",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.location_on,
                          size: 50.0,
                          color: Colors.blue,
                        ),
                        Text(
                          "Location",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.thumb_up,
                          size: 50.0,
                          color: Colors.deepPurple,
                        ),
                        Text(
                          "Like",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    descriptionText,
                    style: TextStyle(
                        wordSpacing: 2.0,
                        textBaseline: TextBaseline.alphabetic),
                  ),
                )
              ],
            )));
  }
}
