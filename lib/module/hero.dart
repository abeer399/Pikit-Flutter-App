import 'package:flutter/material.dart';

class HeroDialogRoute<T> extends PageRoute<T> {
  HeroDialogRoute({ this.builder }) : super();

  final WidgetBuilder builder;

  @override
  bool get opaque => false;

  @override
  bool get barrierDismissible => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  bool get maintainState => true;

  @override
  Color get barrierColor => Colors.black54;

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return new FadeTransition(
        opacity: new CurvedAnimation(
            parent: animation,
            curve: Curves.easeOut
        ),
        child: child
    );
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return builder(context);
  }

  @override
  // TODO: implement barrierLabel
  String get barrierLabel => "";

}

class HeroButton extends StatelessWidget{
  final String title;
  final String img;

  const HeroButton({Key key, this.title, this.img});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Align(
        alignment: FractionalOffset.center,
        child: new Card(
          child: new Hero(
            tag: 'developer-hero',
            child: new Container(
              width: 300.0,
              height: 300.0,
              child: new FlutterLogo(),
            ),
          ),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        child: new Icon(Icons.developer_mode),
        onPressed: () {
          Navigator.push(
            context,
            new HeroDialogRoute(
              builder: (BuildContext context) {
                return new Center(
                  child: new AlertDialog(
                    title: new Text('You are my hero.'),
                    content: new Container(
                      child: new Hero(
                        tag: 'developer-hero',
                        child: new Container(
                          height: 200.0,
                          width: 200.0,
                          child: Image.asset(""),
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      new FlatButton(
                        child: new Text('Close!'),
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
      ),
    );
  }

}