// 1- call material to use widgets
import 'package:flutter/material.dart';

// 2- make class extends from ( STLW, STFW)

// custmize or widgets
class Category extends StatelessWidget {
// our variables and constructor between class & @override
// constructor
  // a- className({this.var,...});
  Category({this.text, this.color, this.onTap});
  // b- dataType? var; == properties
  String? text;
  Color? color;
  VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    // we return GesturDetector with replace data with our var
    return GestureDetector(
      onTap: onTap, // we use method
      child: Container(
        padding: EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 65,
        width: double.infinity,
        color: color, // we use color widget
        child: Text(
          text!, // we use string!
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
