import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pikit_app/Profie.dart';
import 'package:pikit_app/Utils.dart';
import 'Nav.dart';
import 'Search Bar.dart';

enum AlignText{
 TOP,BOTTOM
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SafeArea(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          child: Image.asset("images/header.png",width: getScreenSize(context).width,fit: BoxFit.cover),
                        ),
                        Padding(
                          padding:EdgeInsetsDirectional.only(top:30,end: 100,start: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              IconButton(
                                onPressed: (){navigate(context, ProPage());},
                                icon: Icon(Icons.person,color: Colors.white,size: 20,),
                              ),
                              SizedBox(width: 40,),
                              Image.asset("images/logo.png",width: getScreenSize(context).width-220,color: Colors.white,),
                            ],
                          ),
                        ),

                        Padding(
                          padding:EdgeInsetsDirectional.only(top: 100,start: 30,),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Container(
                                  height: 30,
                                  width: getScreenSize(context).width-55,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                  ),
                                  child: Stack(
                                    children: <Widget>[
                                      TextField(
                                        maxLines: 1,
                                        decoration: InputDecoration(
                                          hintStyle: TextStyle(fontSize: 12),
                                          hintText: getLocalization(context, "Home-SearchBox"),
                                          suffixIcon: Icon(Icons.search,color: Colors.grey,),
                                          border: InputBorder.none,
                                          contentPadding: EdgeInsets.all(13),
                                        ),
                                      ),
                                      Positioned(
                                        child: InkWell(
                                          child: SizedBox(width: 70,height: 50),
                                          onTap: (){},
                                        ),
                                        right: 5,
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),

                        ),
                      ],
                    ),

                    Stack(
                      children: <Widget>[
                       Container(
                       //  margin:EdgeInsetsDirectional.only(top:30),
                         child:  Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: <Widget>[
                             InkWell(
                               onTap: (){navigate(context, Search());},
                               child: boxItem(screenSize.width-10,"images/01.png",getLocalization(context,"Home-Pic01"),getLocalization(context,"Home-Pic01-Text1"),
                                 alignText: AlignText.TOP,height: 200),

                             ),
                             Row(
                               children: <Widget>[
                                 InkWell(
                                   onTap: (){navigate(context, Search());},
                                   child:
                                   boxItem((screenSize.width/2),"images/02.png",getLocalization(context, "Home-Pic02"),getLocalization(context, "Home-Pic02-Text2")),
                                 ),
                                 InkWell(
                                   onTap: (){navigate(context, Search());},
                                   child:boxItem((screenSize.width/2),"images/03.png",getLocalization(context, "Home-Pic03"),getLocalization(context, "Home-Pic03-Text3")),

                                 )

                               ],
                             ),
                             Row(
                               children: <Widget>[
                              InkWell(
                                onTap: (){navigate(context, Search());},
                                child: boxItem((screenSize.width/2),"images/04.png",getLocalization(context, "Home-Pic04"),getLocalization(context, "Home-Pic04-Text4")),

                              ),
                               InkWell(onTap: (){navigate(context, Search());},
                               child:boxItem((screenSize.width/2),"images/05.png",getLocalization(context, "Home-Pic05"),getLocalization(context, "Home-Pic05-Text5")),

                               )
                               ],
                             ),
                             InkWell(
                               onTap: (){navigate(context, Search());},
                               child:boxItem(screenSize.width-10,"images/06.png",getLocalization(context,"Home-Pic06"),getLocalization(context,"Home-Pic06-Text6"),height: 200),

                             )
                           ],
                         ),
                       )
                      ],
                    )


                  ],
                ),
              ],
            )

        ),


      ),
    );
  }

  Widget boxItem(double width,String image,String title,String subTitle,{AlignText alignText = AlignText.BOTTOM,double height = 170}){
    return Container(
      height: height,
      width: width,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Image.asset(image,width: width,height: height),
          Positioned(
            child: Column(
              children: <Widget>[
                Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,)),
                Text(subTitle,style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal))
              ],
            ),
            bottom: (alignText == AlignText.BOTTOM ? 20 : 110),
          )
        ],
      ),
    );
  }
}
