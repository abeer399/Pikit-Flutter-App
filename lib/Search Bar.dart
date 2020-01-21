
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pikit_app/Favourite.dart';
import 'package:pikit_app/Nav.dart';
import 'package:pikit_app/Utils.dart';


class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  double _animatedHeight = 0.0;

  final recentrestaurants = [
    "Al Finique",
    "Al Farsan",
    "Al Fresco Italian Trattoria",
    "Al Fresco Dubai",
    "Al Phenic",
    "Tree House Dubai",
    "Sea Grill Bistro",
    "Marina Social",
  ];

  expand() {
    setState(() {
      _animatedHeight = 200.0;
    });
  }

  collapse() {
    setState(() {
      _animatedHeight = 0.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SafeArea(
            child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Image.asset("images/header.png"),

               /* Container(
                  margin:EdgeInsetsDirectional.only(top: 25, start: 10),
                  child: IconButton(
                    onPressed: () {navigate(context, Login());},
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),*/
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(

                        margin:EdgeInsetsDirectional.only(top: 20),
                        child: Text(getLocalization(context, "Searchbar-Head1"),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin:EdgeInsetsDirectional.only(top: isArabic(context) ? 40 : 60),
                        child: Text(getLocalization(context, "Searchbar=Head2"),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.white,
                          ),
                        )),
                    Padding(
                      padding:EdgeInsetsDirectional.only(top: 7.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Icon(
                              Icons.location_on,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          Container(
                              child: Text(getLocalization(context, "Searchbar-Head3"),
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  child: Stack(
                    children: <Widget>[
                      InkWell(
                          onTap: () {},
                          child: Container(
                            height: 40,
                            width: 370,
                            margin:EdgeInsetsDirectional.only(top: 127, start: 25),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                            ),
                            child: Stack(
                              children: <Widget>[
                                TextField(
                                  maxLines: 1,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(fontSize: 15),
                                    hintText: getLocalization(context, "Searchbar-SearchBox"),
                                    suffixIcon: IconButton(
                                      onPressed: (){
                                        Navigator.of(context).pop(context);
                                      },
                                      icon: Icon(Icons.close),
                                      color: Colors.grey,
                                    ),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(vertical: 13,horizontal: 13),
                                  ),
                                  onChanged: (val) {
                                    if (val.isEmpty) {
                                      collapse();
                                    } else {
                                      expand();
                                    }
                                  },
                                ),
                                Positioned(
                                  child: InkWell(
                                    child: SizedBox(width: 70, height: 50),
                                    onTap: () {
                                      setState(() {});
                                    },
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              Card(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new AnimatedContainer(
                     // curve:Curves.easeOutCirc,
                      duration: const Duration(milliseconds: 1000),
                      child: new Container(
                        margin: EdgeInsetsDirectional.only(start: 5),
                        child: ListView.builder(
                          itemCount: recentrestaurants.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (c,i)=>Text(recentrestaurants[i],style: TextStyle(
                              fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey
                          ),
                          ),
                        ),
                      ),
                      height: _animatedHeight,
                      color: Colors.transparent,
                      width: 370.0,
                    )
                  ],
                ),
              )
            ],
          ),
              Column(
                children: <Widget>[

                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/restaurants/res.jpg" ,),
                                )
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(start: 10),
                                  child: Container(
                                    child: Text("Al Phenic",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res1"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset("images/restaurants/res1.jpeg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 55),
                                  child: Container(
                                    child: Text("Tree House Dubai",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res2"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/restaurants/res2.jpg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 130),
                                  child: Container(
                                    child: Text("Sea Grill Bistro",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res3"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                   onTap: (){navigate(context, FavouritePage());},
                   child:  Container(
                     width: getScreenSize(context).width,
                     decoration: BoxDecoration(
                       border: Border(bottom: BorderSide(
                           width: 0.2
                       ),),
                     ),
                     child: Card(
                       child: Row(
                         children: <Widget>[
                           Container(
                               width: 125,
                               height: 125,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(80),
                               ),
                               child:ClipRRect(
                                 borderRadius: BorderRadius.circular(30),
                                 child: Image.asset("images/restaurants/res3.jpg" ,),
                               )
                           ),
                           Column(
                             children: <Widget>[
                               Padding(
                                 padding: EdgeInsetsDirectional.only(end: 115),
                                 child: Container(
                                   child: Text("Marina Social",style: TextStyle(fontWeight: FontWeight.bold),),
                                 ),
                               ),
                               Padding(
                                 padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                 child: Row(
                                   children: <Widget>[
                                     Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                     Text(getLocalization(context, "SearchBar-Res4"),style: TextStyle(
                                         color: Colors.grey[400],
                                         fontSize: 12
                                     ),),

                                   ],
                                 ),
                               )

                             ],
                           ),
                         ],

                       ),
                     ),
                   ),
                 ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/restaurants/res.jpg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 130),
                                  child: Container(
                                    child: Text("Al Phenic",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res1"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset("images/restaurants/res1.jpeg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 55),
                                  child: Container(
                                    child: Text("Tree House Dubai",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res2"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/restaurants/res2.jpg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 130),
                                  child: Container(
                                    child: Text("Sea Grill Bistro",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res3"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child:  Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/restaurants/res3.jpg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 115),
                                  child: Container(
                                    child: Text("Marina Social",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res4"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/restaurants/res.jpg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 130),
                                  child: Container(
                                    child: Text("Al Phenic",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res1"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset("images/restaurants/res1.jpeg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 55),
                                  child: Container(
                                    child: Text("Tree House Dubai",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res2"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/restaurants/res2.jpg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 130),
                                  child: Container(
                                    child: Text("Sea Grill Bistro",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res3"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child:  Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/restaurants/res3.jpg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 115),
                                  child: Container(
                                    child: Text("Marina Social",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res4"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/restaurants/res.jpg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 130),
                                  child: Container(
                                    child: Text("Al Phenic",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, 'SearchBar-Res1'),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(25),
                                  child: Image.asset("images/restaurants/res1.jpeg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 55),
                                  child: Container(
                                    child: Text("Tree House Dubai",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res2"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child: Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/restaurants/res2.jpg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 130),
                                  child: Container(
                                    child: Text("Sea Grill Bistro",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res3"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){navigate(context, FavouritePage());},
                    child:  Container(
                      width: getScreenSize(context).width,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(
                            width: 0.2
                        ),),
                      ),
                      child: Card(
                        child: Row(
                          children: <Widget>[
                            Container(
                                width: 125,
                                height: 125,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                                child:ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset("images/restaurants/res3.jpg" ,),
                                )
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsetsDirectional.only(end: 115),
                                  child: Container(
                                    child: Text("Marina Social",style: TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(top: 5,start: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,color: Color(0xFF298997),size: 14,),
                                      Text(getLocalization(context, "SearchBar-Res4"),style: TextStyle(
                                          color: Colors.grey[400],
                                          fontSize: 12
                                      ),),

                                    ],
                                  ),
                                )

                              ],
                            ),
                          ],

                        ),
                      ),
                    ),
                  ),



                ],
              )

        ]
            ),

        ),

      ),
    );
  }
}
