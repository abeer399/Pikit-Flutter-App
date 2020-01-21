import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pikit_app/Utils.dart';


class TabData{
  String title;
  String descp;

  TabData(this.title, this.descp);


}

class GalPage extends StatefulWidget {
  final String image;

  const GalPage({this.image}) : super();


  @override
  _GalPageState createState() => _GalPageState();
}

class _GalPageState extends State<GalPage> {
  bool value;
  List<TabData> tabsData;

  void initState() {
    value = false;
    tabsData = [
      TabData("Gallery-Tab-1","Gallery-TabData-1"),
      TabData("Gallery-Tab-2","AED 2000"),
    ];
    super.initState();
  }

  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        appBar: AppBar(
          title: Text("Gallery"),
          centerTitle: true,
          backgroundColor: Color(0xFF298997),
        ),
        body: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsetsDirectional.only(top: 15, start: 15),
                  height: 90,
                  width: 90,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("images/ruya.jpg"),
                  ),
                ),
                Container(
                  padding: EdgeInsetsDirectional.only(start: 10),
                  child: Text(
                    getLocalization(context, "Gallery-Head"),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                      child: Hero(
                        tag: "Grid",
                        child: Image.asset(
                         widget.image,
                          width: getScreenSize(context).width,
                          height: getScreenSize(context).height -215,
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  bottom: !value?7:210,
                  child: Container(
                      padding: EdgeInsetsDirectional.only(top: 560, start: 15),
                      child: InkWell(
                          onTap: () {
                            setState(() {
                              value = !value;
                            });
                          },
                          child: Material(
                            color: Colors.white,
                            shape:
                            CircleBorder(side: BorderSide(color: Colors.white)),
                            child: Icon(
                              Icons.info,
                              color: Color(0xFF298997),
                              size: 35,
                            ),
                          ))),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  bottom: !value?-200:-5,
                  child: AnimatedContainer(
                    height: 200,
                    duration: Duration(milliseconds: 1000),
                    width: getScreenSize(context).width,
                    child: tabView(),
                  ),
                ),
              ],
            )
          ],
        ),
      )
    );
  }

  Widget tabView() {


    return DefaultTabController(
        length: 2,
        child: Card(
            child: Container(
              child: Stack(children: <Widget>[
                  Positioned(
                    top: 0,
                    child: Container(
                      height: 50,
                      width: getScreenSize(context).width,
                      child: TabBar(
                        tabs:tabsData.map((TabData tabdata) =>  Tab(child: Text(getLocalization(context, tabdata.title),style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),)).toList(),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 50,
                      left: 0,
                      child: SizedBox(
                        width: getScreenSize(context).width-20,
                        height: 200,
                        child: TabBarView(
                          dragStartBehavior: DragStartBehavior.start,
                          children:tabsData.map((TabData tab)
                          {//final String label = tab.text.toUpperCase();
                          return ListView(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsetsDirectional.only(top: 10),
                                child:Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsetsDirectional.only(start: 5),
                                      child: Text(getLocalization(context, tab.descp),style: TextStyle(fontSize: 18),),
                                    )
                                  ],
                                ) ,
                              )
                            ],
                          );
                          }).toList(),


                        ),
                      )),
                ]))));
  }
}
