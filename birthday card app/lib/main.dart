import 'package:flutter/material.dart';

void main() {
  runApp(BirthdayCard());
}

// stls == make immediatly our STLS class, STLS == STLW
// we put our project name with stls class, amd use it on runApp

class BirthdayCard extends StatelessWidget {
// we don't need stls constructor
// const BirthdayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // we get color by color picker
        backgroundColor: Color(0xFFD2BCD5),
        body: Center(
          // child: Image.asset('images/birthday_card.png',
          // fit: BoxFit.cover,),
          child: Image(
            image: AssetImage('images/birthday_card.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}


// ========== Hints ============
// yaml:-
// pubspec.yaml == carry all things our app depend on them as images, fonts, sounds
// yaml lang [ use indentatin (to know section & subsection), # to comment]
// we use copy relative path
// when use path on windows, (/) don't forget them

// parameter == attribute
// color Pickers: Color(start with 0xff)
// as free color picker, just color picker

// ==========================
// build your apk by using terminal??
// flutter build apk --build-name=1.0 --build-number=1
// you found it on path == build/app/outputs/
// read about Build and release an android app
// we can use android studio with our phone to et final app
//===========================