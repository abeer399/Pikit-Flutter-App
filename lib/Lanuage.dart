import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pikit_app/Utils.dart';
import 'package:pikit_app/mywidgets/CustomButton.dart';
import 'Login.dart';
import 'Nav.dart';

class Lanuage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (EasyLocalizationProvider.of(context).data == null) {
      switchLanguage(context, Langs.EN);
    }

    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: <Widget>[
          Image.asset("images/image.png",
              width: getScreenSize(context).width,
              height: getScreenSize(context).height,
              fit: BoxFit.cover),
          Center(
            child: Container(
              child: Container(
                child: Image.asset("images/logo.png",
                    width: getScreenSize(context).width - 30),
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: <Widget>[
                Expanded(child: SizedBox()),
                Text(getLocalization(context, "Lanuage-Select"),
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
                Container(
                  margin:EdgeInsetsDirectional.only(top: 10),
                  child: Text(getLocalization(context, "Lanuage-Head"),
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: <Widget>[
                      Button(
                          title: getLocalization(context, "Button-One"),
                          onTap: () {
                            switchLanguage(context, Langs.EN);
                            navigate(context, Login());
                          }),
                      Padding(
                        padding:EdgeInsetsDirectional.only(top: 10),
                        child: Button(
                          title: getLocalization(context, "Button-two"),
                          onTap: () {
                            switchLanguage(context, Langs.AR);
                            navigate(context, Login());
                          },
                          inverse: true,
                          paddingVertical: 5,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
