import 'package:flutter/material.dart';
import 'package:pikit_app/Home.dart';
import 'package:pikit_app/Utils.dart';
import 'package:pikit_app/base/Styles.dart';
import 'package:pikit_app/mywidgets/CustomButton2.dart';

import 'Nav.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SafeArea(
        child: Stack(children: <Widget>[
          Image.asset(
            "images/Loginbg.png",
            width: getScreenSize(context).width,
            height: getScreenSize(context).height,
            fit: BoxFit.cover,
          ),
          Center(
            child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/logo.png",
                  width: getScreenSize(context).width - 45,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(getLocalization(context, "Login-Head"),
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18)),
                Text(getLocalization(context, "Login-Head-Two"),
                    style: TextStyle(color: Color(0xFF298997), fontSize: 15),
                    textAlign: TextAlign.center),

              ],
            )),
          ),
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 180,
                  ),
                  Text(getLocalization(context, "Login-Text"),
                      style: TextStyle(fontSize: 18),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 300,),
              Container(
                width: getScreenSize(context).width-100,
                child:SecondButton(img: "images/icons/facebook.png",title: getLocalization(context, "Login-Fb"),onTap: (){
                  navigate(context, Home());
                }, colors: [AppStyles.fbColor,AppStyles.fbColor]),

              ),
                Container(
                    width: getScreenSize(context).width-100,
                    child: Padding(
                      padding:EdgeInsetsDirectional.only(top: 10),
                      child: SecondButton(img:"images/icons/insta.png",title: getLocalization(context, "Login-Insta"),onTap:(){
                        navigate(context, Home());},

              )

          )
              ),
              ],
            ),
          )

        ]
        ),
      )),
    );
  }
}
