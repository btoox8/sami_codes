import 'package:flutter/material.dart';
import 'package:weather_app/pages/homepage.dart';

void main() {
  runApp(const SearchPage());
}

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
