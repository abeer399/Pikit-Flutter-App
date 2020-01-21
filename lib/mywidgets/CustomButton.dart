import 'package:flutter/material.dart';
import 'package:pikit_app/Utils.dart';
import 'package:pikit_app/base/Styles.dart';

class Button extends StatelessWidget{
  final String title;
  final Function onTap;
  final bool inverse;
  final double fontSize;
  final double paddingVertical;

  Button({this.title = "", this.onTap,this.inverse = false,this.fontSize = 16.0,this.paddingVertical = 10});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: inverse ? Colors.white : AppStyles.primaryColor,
      borderRadius: BorderRadius.circular(5),
      child: InkWell(
        onTap: onTap,
        child:Container(
          padding: EdgeInsets.symmetric(vertical:paddingVertical ),
          width: getScreenSize(context).width-40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  color: inverse ? AppStyles.primaryColor : Colors.white,
                  width: 1
              ),
          ),
          child: Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                  color: inverse ? AppStyles.primaryColor : Colors.white),textAlign: TextAlign.center),
        ),
      ),
    );
  }

}