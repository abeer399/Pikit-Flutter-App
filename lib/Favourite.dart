import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pikit_app/Nav.dart';
import 'package:pikit_app/Utils.dart';
import 'package:pikit_app/grid.dart';

class FavouritePage extends StatefulWidget {
  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[700],
          centerTitle: true,
          title: Text(getLocalization(context, "Fav-App-Head"),style:
            TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      InkWell(
                          onTap: (){},
                          child: Container(
                            height: 40,
                            width: 370,
                            margin:EdgeInsetsDirectional.only(top: 10,start: 40),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(7)),
                            ),
                            child: Stack(
                              children: <Widget>[
                                TextField(
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.search,color: Colors.grey,),
                                    hintStyle: TextStyle(fontSize: 15),
                                    hintText: getLocalization(context, "Fav-SearchBox"),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(13),
                                  ),
                                ),
                                Positioned(
                                  child: InkWell(
                                    child: SizedBox(width: 70,height: 50),
                                    onTap: (){},
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),

                    ],
                  ),
                ),
              ],
            ),
          //
            //    "Fav-Card02"
            Column(
              children: <Widget>[
                Card(
                  margin:EdgeInsetsDirectional.only(top: 10),
                  child:  Column(
                    children: <Widget>[
                      ImageBox(context, "images/ruya.jpg", "Fav-Card01",isArabic(context)?190:185),
                      ImageBox(context, "images/jumeriah.jpeg", "Fav-Card02",isArabic(context)?126:125),
                      ImageBox(context, "images/ostro.jpg", "Fav-Card03",isArabic(context)?135:140)
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width:900,
                  color: Colors.grey[200],
                  child: Container(
                    margin: EdgeInsetsDirectional.only(start: 30,top: 10),
                    child: Text(getLocalization(context, "Fav-Sugges"),
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        color: Colors.grey[700]
                      ),
                    ),
                  ),
                ),
                Card(
                  margin:EdgeInsetsDirectional.only(top: 10),
                  child:  Column(
                    children: <Widget>[
                      ImageBox(context, "images/qutoof.jpg","Fav-Card04",isArabic(context)?120:130 ),
                      ImageBox(context, "images/noodle.jpg", "Fav-Card05",isArabic(context)?118:130),
                      ImageBox(context, "images/feta.jpeg", "Fav-Card06",isArabic(context)?140:155),
                      ImageBox(context, "images/qutoof.jpg", "Fav-Card07",isArabic(context)?117:135),
                      ImageBox(context, "images/noodle.jpg","Fav-Card08",isArabic(context)?115:135 ),
                      ImageBox(context, "images/feta.jpeg", "Fav-Card09",isArabic(context)?140:160),
                    ],

                  ),
                ),

              ],
            )

          ],
        ),
      ),

    );
  }
}
ImageBox(BuildContext context ,String Img,String txt,double margin){
  return InkWell(
    onTap: (){
      navigate(context, Grid(Img ,txt));
    },
    child: Container(
        height: 70,
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Theme.of(context).dividerColor),
          ),
        ),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsetsDirectional.only(start: 10),
              height: 60,
              width: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset(Img),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(start: 30),
              child: Text(getLocalization(context, txt),
                style: TextStyle
                  (fontWeight: FontWeight.w400,
                    fontSize: 20
                ),
              ),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(start: margin),
              child: Icon(Icons.bookmark_border,color:Colors.grey,),
            ),

          ],
        )
    ),
  );
}
