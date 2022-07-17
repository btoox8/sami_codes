import 'package:flutter/material.dart';
import 'package:weather_app/pages/homepage.dart';


void main() {
  // ignore: prefer_const_constructors
  runApp(Weather());
}

class Weather extends StatelessWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
