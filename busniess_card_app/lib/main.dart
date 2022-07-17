import 'package:busniess_card_app/const.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BusniessCardApp());
}

class BusniessCardApp extends StatelessWidget {
  // BusniessCardApp({Key? key}) : super(key: key);
  // place where we write our variables
  double radius = 112;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF2B475E),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              // it has child accept any widget, also accept CircleAvatar
              // we can use radius storage value
              radius: radius,
              // radius == size of our avatar fram or image
              backgroundColor: Colors.white,
              // we cann't use both backgrounColor & bgImage in same place
              child: CircleAvatar(
                radius: 110,
                backgroundImage: AssetImage('images/tharwat.png'),
                // we use image provider, so we  use AssetImage as one of our options
              ),
            ),
            // I shortcut my
            Text(
              'Tharwat Samy',
              style: mainHeadingText,
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: secondHeadingText,
            ),
            Divider(
              color: Color(0xFF6C8090),
              thickness: 1,
              // we can also use width instead of indent & endIndent
              indent: 60,
              endIndent: 60,
              height: 10,
            ),
            MyCard(
              title: '(+249 920209988)',
              leadingIcon: (Icons.phone),
              // trailingWidget: Text('kkk'),
              // subTitle: 'jjj',
            ),

            MyCard(
              title: 'tharwatsamy@gmail.com',
              leadingIcon: (Icons.email),
              // trailingWidget: Text('kkk'),
              // subTitle: 'jjj',
            ),

            // use ClipRRect with text
            // ClipRRect(
            //   borderRadius: BorderRadius.all(
            //     Radius.circular(99),
            //   ),
            //   child: Text('welcome'),
            // ),
            // use ClipRRect with image
            // ClipRRect(
            //   borderRadius: BorderRadius.all(
            //     Radius.elliptical(25, 50),
            //   ),
            //   child: Image(
            //     image: AssetImage('images/tharwat.png'),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  MyCard({
    required this.leadingIcon,
    required this.title,
    // this.subTitle,
    // this.trailingWidget,
  });
  IconData leadingIcon;
  String title;
  // final String? subTitle;
  // final Widget? trailingWidget;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          size: 32,
          color: Color(0xFF2B475E),
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 24),
        ),
        // subtitle: Text(subTitle!),
        // trailing: Icon(Icons.access_alarm_rounded),
        // trailing: trailingWidget!,
      ),
    );
  }
}

// ========== Hints ============
// look to your UI and anlysis it and its widgets and possiblities
// to build it by multible methods.
// we can plan to do it by drow.io  or  maindmap
// preper your yaml file, you can use on VSC terminal [ flutter pub get], to refresh it
// use google to find your questions answers, how to make...
// adds-on setup vpn to your browser to use websites as medium.com

// ClipRRect(
// BorderRadius.circular(100) [not available now] == BorderRadius.all(Radius.circular(100)),
// may use circular or elliptical
// all or only
// accept other widgets on (child) attribute

// always read and try to improve your code and your self
// guess work?? you don't have digital data put try till reach to acceptable shape
// you can understand code put you need to learn how we reach to it [ by alot of try ]
//===========================
// Download arabic fonts to make your group
// iconfont-preview == VSC extension
// we should restart our app to use new fonts on it
// we can add more than one font family [- family: family name,
// fonts: - asset: (path) ]
// some font links:
// https://www.hacen.net/fonts
// https://arbfonts.com/
// https://fontbug.com/
// fontbug : to know your fonts name from uploading image
//
// =========== Container ===========
// if empty take all posible space but if has a child take its size.
// becarful with next 3 lines:-
// Column take hight as it can, and Row take width as it can
// Column take width of its biggest child
// Row take hight of its biggest child

// you cann't use padding on Container so use Padding widget.
// 8 or 16 are most nums used on padding.
// padding for container with not enough space take from itself so
// its size decreased, and that space not accept adding any widgets on it.

// we cann't use color if we use decoration? due to decoration has color in it.

// Spacer(flex:2,) :: use to make space between widgets in Column or Row.
// we can use padding with every widget.
