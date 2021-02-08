import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
        duration: Duration(milliseconds: 500),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 36.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        tween: Tween<double>(begin: 0, end: 1),
        builder: (BuildContext context, double _val, Widget child) {
          return Opacity(
            opacity: _val,
            child: Padding(
              padding: EdgeInsets.only(top: _val * 26),
              child: child,
            ),
          );
        });
  }
}
