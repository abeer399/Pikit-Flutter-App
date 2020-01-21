import 'package:flutter/material.dart';
import 'package:pikit_app/base/Styles.dart';
import '../Utils.dart';

class SecondButton extends StatelessWidget{ // ignore: must_be_immutable
  final String title;
  final Function onTap;
  final double fontSize;
  final double paddingVertical;
  final String img;
  List<Color> colors;

  SecondButton({Key key, this.title = "", this.onTap,this.fontSize = 16.0,this.paddingVertical = 10, this.img,this.colors});

  @override
  Widget build(BuildContext context) {
    if(colors == null){
      colors = [AppStyles.instColor,AppStyles.insColor];
    }
    // TODO: implement build
    return  Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              colors: colors)
      ),
      child: InkWell(
        onTap: onTap,
        child:Row(
          children: <Widget>[
            Container(
              margin: EdgeInsetsDirectional.only(start: 10),
              child: Image.asset(img,color: Colors.white,width:25,height: 20,),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical:paddingVertical ),
              width: getScreenSize(context).width-150,
              child: Text(title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize,
                      color: Colors.white),textAlign: TextAlign.center),
            ),
          ],
        )
      ),
    );


  }

}
