import 'package:fl_ui_challenge_authentication/pages/auth_1.dart';
import 'package:fl_ui_challenge_authentication/pages/auth_2.dart';
import 'package:fl_ui_challenge_authentication/pages/auth_3.dart';
import 'package:fl_ui_challenge_authentication/pages/auth_4.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/first': (context) => MyAuthentication1(),
        '/second': (context) => MyAuthentication2(),
        '/third': (context) => MyAuthentication3(),
        '/four': (context) => MyAuthentication4(),
        // '/five': (context) => MyAuthentication5(),
        // '/six': (context) => MyAuthentication6(),
        // '/seven': (context) => MyAuthentication7(),
        // '/eight': (context) => MyAuthentication8(),
        // '/nine': (context) => MyAuthentication9(),
        // '/ten': (context) => MyAuthentication10(),
        // '/eleven': (context) => MyAuthentication11(),
      },
    );
  }
}
