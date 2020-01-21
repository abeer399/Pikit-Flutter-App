
import 'package:flutter/material.dart';
import 'package:pikit_app/Lanuage.dart';
import 'package:pikit_app/Login.dart';
import 'package:pikit_app/Nav.dart';

import 'package:pikit_app/Utils.dart';

// ignore: must_be_immutable
class ProPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProPageState();
  }

}

class _ProPageState extends State<ProPage> {
  bool isSwitched = true;

  @override
  void initState() {
    isSwitched = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(getLocalization(context, "Profile-App-Head")),
          centerTitle: true,
          backgroundColor: Color(0xFF298997),
        ),
        body: Column(
            children: <Widget>[
              Container(
                height: 130,
                width: getScreenSize(context).width,
                child: Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsetsDirectional.only(start: 10,top:5),
                      child: Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "images/siddiqui.jpg", height: 100,),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 65, horizontal: 65),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.add_circle, color: Color(0xFF298997),
                          size: 30,),
                      ),
                    ),
                    Container(
                      margin:EdgeInsetsDirectional.only(top: 105, start: 27),
                      child: Text(getLocalization(context, "Profile-Image-Text"), style: TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),),
                    ),
                    Container(
                      margin:EdgeInsetsDirectional.only(top: 20, start: 145),
                      child:
                      Column(
                        children: <Widget>[
                          Text(
                            getLocalization(context, "Profile-Side-Number"), style: TextStyle(fontSize: 16, color: Color(
                              0xFF298997)),),
                          Text(getLocalization(context, "Profile-Side-Text"), style: TextStyle(fontSize: 18),)
                        ],
                      ),
                    ),
                    Container(
                      margin:EdgeInsetsDirectional.only(top: 20, start:270),
                      child: Column(
                        children: <Widget>[
                          Text(
                            getLocalization(context, "Profile-Side-Number2"), style: TextStyle(fontSize: 16, color: Color(
                              0xFF298997)),),
                          Text(
                            getLocalization(context, "Profile-Side-Text2"), style: TextStyle(fontSize: 16),)
                        ],
                      ),
                    ),

                    Container(
                      margin: EdgeInsetsDirectional.only(start: 130, top: 65),
                      width: getScreenSize(context).width - 150,
                      child: Container(decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100)
                      ),
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.white,
                          child: Text(getLocalization(context, "Profile-Edit")),

                        ),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: <Widget>[
                 Container(
                   decoration: BoxDecoration(
                     border: Border(bottom: BorderSide(
                       width: 0.7
                     )),
                   ),
                   child:  Card(
                     child: Row(
                       children: <Widget>[
                         Container(
                           margin:EdgeInsetsDirectional.only(top: 15),
                           height: 40,
                           /*decoration: BoxDecoration(
                            border:
                          ),*/
                           child: Text(getLocalization(context, "Profile-Notification"),
                             style: TextStyle(fontSize: 20),),
                         ),
                         Container(
                           margin: EdgeInsetsDirectional.only(start: 190),
                           child: Switch(
                             value: isSwitched,
                             onChanged: (value) {
                               setState(() {
                                 isSwitched = value;
                               });
                               if(isSwitched){
                                 switchLanguage(context, Langs.EN);
                               }else{
                                 switchLanguage(context, Langs.AR);
                               }
                             },
                             activeTrackColor: Color(0xFF298997),
                             activeColor: Colors.white,
                           ),)
                       ],
                     ),
                   ),
                 ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(
                          width: 0.7
                      )),
                    ),
                    child:  Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin:EdgeInsetsDirectional.only(top: 15),
                            height: 40,
                            /*decoration: BoxDecoration(
                            border:
                          ),*/
                            child: Text(getLocalization(context, "Profile-Lanuage"),
                              style: TextStyle(fontSize: 20),),
                          ),
                          Container(
                            margin: EdgeInsetsDirectional.only(start: 225),
                            child: Text(getLocalization(context, "Profile-Lanuage1"),style: TextStyle(fontSize: 18,color: Color(0xFF298997)),),),
                          Container(
                            margin: EdgeInsetsDirectional.only(start: 7),
                            child: Text(getLocalization(context, "Profile-Lanuage2"),style: TextStyle(fontSize: 18),),)
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(
                          width: 0.7
                      )),
                    ),
                    child:  Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin:EdgeInsetsDirectional.only(top: 15),
                            height: 40,
                            /*decoration: BoxDecoration(
                            border:
                          ),*/
                            child: Text(getLocalization(context, "Profile-Contact"),
                              style: TextStyle(fontSize: 20),),
                          ),
                          Container(
                          margin: EdgeInsetsDirectional.only(start: 155),
                          child: IconButton(
                            onPressed: (){navigate(context, Login());},
                          iconSize: 30,
                          icon: Icon(Icons.navigate_next),
                            ),
                        )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(
                          width: 0.7
                      )),
                    ),
                    child:  Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin:EdgeInsetsDirectional.only(top: 15),
                            height: 40,
                            /*decoration: BoxDecoration(
                            border:
                          ),*/
                            child: Text(getLocalization(context, "Profile-Logout"),
                              style: TextStyle(fontSize: 20),),
                          ),
                          Container(
                            margin: EdgeInsetsDirectional.only(start: 230),
                            child: IconButton(
                              onPressed: (){navigate(context, Lanuage());},
                              iconSize: 30,
                              icon: Icon(Icons.navigate_next),
                            ),)
                        ],
                      ),
                    )
                  ),
                ],
              )
            ]
        ),
      ),
    );
  }

}