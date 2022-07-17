import 'package:flutter/material.dart';
import 'package:toku/screens/home_page.dart';
import 'package:get/get.dart';
// import 'screens/home_page.dart';

void main() {
  runApp(const TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(), // we call by class name
      // home: Get.to(page);
    );
  }
}
