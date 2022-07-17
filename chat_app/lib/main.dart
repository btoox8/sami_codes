import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:scholar_chat/pages/chat_page.dart';
import 'package:scholar_chat/pages/login_page.dart';
import 'package:scholar_chat/pages/resgister_page.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ScholarChat());
}

class ScholarChat extends StatelessWidget {
  const ScholarChat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // we can use many method to write them
        // 'string' : .... ordinary method
        // classname().id : every call we make instance
        // classname.id : we access to class id no need to make instance of it
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        ChatPage.id: (context) => ChatPage()
      },
      initialRoute: LoginPage.id,
    );
  }
}
