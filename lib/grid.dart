import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:pikit_app/Home.dart';
import 'package:pikit_app/Nav.dart';
import 'package:pikit_app/Utils.dart';


import 'gallery.dart';
import 'module/hero.dart';


class Grid extends StatefulWidget {
  final String img;
  final String txt;

  const Grid( this.img, this.txt) : super();


  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
int clr = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(getLocalization(context, widget.txt)),
          centerTitle: true,
          backgroundColor: Color(0xFF298997),
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.phone_in_talk),
              color: Colors.white,
            )
          ],
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Stack(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsetsDirectional.only(top: 20,start: 10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child:
                          Image.asset(widget.img,height: 80,width: 80,),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsetsDirectional.only(start:10,end: 95),
                            child: Text(getLocalization(context, widget.txt),style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 10,top: 4),
                            child: Text(getLocalization(context, "Grid-Head-2"),style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 12
                            ),),
                          ),
                        ],
                      ),

                    ],
                  ),
                  Container(
                    padding: EdgeInsetsDirectional.only(start: 100,top: 75),
                    width: getScreenSize(context).width-170,
                    child: RaisedButton(
                      onPressed: (){},
                      hoverColor: Color(0xFF298997),
                      color:Colors.white ,
                      child: Text(getLocalization(context, "Grid-Email")),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 75,start: 250),
                    child: Container(
                      width: getScreenSize(context).width-240,
                      child: RaisedButton(
                        onPressed: (){},
                        hoverColor: Color(0xFF298997),
                        color:Colors.white ,
                        child: Text(getLocalization(context, "Grid-Address")),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 40),
                  child: Container(
                    height: 80,
                    width: 450,
                    child:  Row(
                      children: <Widget>[
                        Card(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Row(
                                children: <Widget>[
                                 InkWell(
                                   onTap: (){setState(() {
                                     clr =0;

                                   });},
                                   child:  Container(
                                     color: clr==0?Color(0xFF298997):Colors.white,
                                     padding: EdgeInsetsDirectional.only(start: 15,top: 15,end: 10),
                                     child: Column(
                                       children: <Widget>[
                                         Container(

                                           child: Text("1,455",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xFFd4d4d4)),),
                                         ),
                                         Container(
                                           child: Text(getLocalization(context, "Grid-Bar-1"),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xFFd4d4d4)),),
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                                  InkWell(
                                    onTap: (){setState(() {
                                      clr=1;
                                    });},
                                    child: Container(
                                      color: clr==1?Color(0xFF298997):Colors.white,
                                      padding: EdgeInsetsDirectional.only(top: 15,start: 15,end: 10),
                                      child:  Column(
                                        children: <Widget>[
                                          Container(
                                            child: Text("865",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xFFd4d4d4)),),
                                          ),
                                          Container(
                                            child: Text(getLocalization(context, "Grid-Bar-2"),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xFFd4d4d4)),),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                 InkWell(
                                   onTap: (){setState(() {
                                     clr=2;
                                   });},
                                   child:  Container(
                                    color: clr==2?Color(0xFF298997):Colors.white,
                                     padding:EdgeInsetsDirectional.only(top: 15,start: 20,end: 10) ,
                                     child: Column(
                                       children: <Widget>[
                                         Container(
                                           child: Text("562",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xFFd4d4d4)),),
                                         ),
                                         Container(
                                           child: Text(getLocalization(context, "Grid-Bar-3"),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Color(0xFFd4d4d4)),),
                                         ),
                                       ],
                                     ),
                                   ),
                                 ),
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 10),
                  child: Container(
                    height: 50,
                    width: getScreenSize(context).width-60,
                    child: Card(
                        color:Color(0xFFaed1d6),
                        child: Container(
                          child: Row(
                            children: <Widget>[
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    clr=0;
                                  });
                                },
                                child:  Container(
                                    padding: EdgeInsetsDirectional.only(start: 30,top: 5),
                                    child: Text(getLocalization(context, "Grid-Bar-4"),style: TextStyle(fontSize: 18,color: clr==0?Color(0xFF298997):Colors.white,),)
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    clr=1;
                                  });
                                },
                                child: Container(
                                    padding: EdgeInsetsDirectional.only(start: 45,top: 5),
                                    child: Text(getLocalization(context, "Grid-Bar-5"),style: TextStyle(fontSize: 18,color: clr==1?Color(0xFF298997):Colors.white,),)
                                ),
                              ),
                              InkWell(
                                onTap: (){
                                  setState(() {
                                    clr=2;
                                  });
                                },
                                child: Container(
                                    padding: EdgeInsetsDirectional.only(start: 45,top: 5),
                                    child: Text(getLocalization(context, "Grid-Bar-6"),style: TextStyle(fontSize: 18,color: clr==2?Color(0xFF298997):Colors.white,),)
                                ),
                              )

                            ],
                          ),
                        )
                    ),
                  ),
                ),
              ],
            ) ,
            Expanded(
                child:  GridView.builder(

                  addRepaintBoundaries: true,
                    scrollDirection: Axis.vertical,
                    itemCount: 12,
                    gridDelegate:
                    SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5),
                    itemBuilder: (context, index){
                      return Column(
                        children: <Widget>[
                          InkWell(
                            child: Container(
                              child:  Hero(
                                tag:"Grid$index",
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/grid/grid${index+1}.jpg",height: 125,width: 125,),
                                ),

                              ),
                            ),
                            onTap: (){Navigator.push(context, HeroDialogRoute(
                              builder: (BuildContext context) {
                                return new Center(
                                  child: new CupertinoAlertDialog(
                                    title: new Text(getLocalization(context, "Grid-Alert"),style: TextStyle(fontSize:20,fontWeight: FontWeight.bold, ),),
                                    content: new Container(
                                      child: new Hero(
                                        tag: 'Grid${index+1}',
                                        child: new Container(
                                          height: 300.0,
                                          width: 300.0,
                                          child: Material(
                                            child: InkWell(
                                                onTap: (){navigate(context, GalPage(image: "images/grid/grid${index+1}.jpg"));},
                                                child: PhotoView(imageProvider: AssetImage("images/grid/grid${index+1}.jpg"),)
                                          )
                                          )
                                        ),
                                      ),
                                    ),
                                    actions: <Widget>[
                                      new CupertinoButton(
                                        child: new Text(getLocalization(context, "Alert-Close")),
                                        color: Color(0xFF298997),
                                        onPressed: Navigator
                                            .of(context)
                                            .pop,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            );
                            },
                          )
                        ],
                      );
                    }
                )
            )
          ],
        ),
      ),
    );
  }
}

