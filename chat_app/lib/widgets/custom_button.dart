import 'package:flutter/material.dart';

class CustomButon extends StatelessWidget {
  CustomButon({this.onTap, required this.text});

  // text on button & its function
  String text;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        width: double.infinity,
        height: 60,
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}
