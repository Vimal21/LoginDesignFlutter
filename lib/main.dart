import 'package:flutter/material.dart';
import 'file:///C:/Users/vimalathithan.a/AndroidStudioProjects/login_design/lib/Screens/Welcome/welcome_screen.dart';
import 'package:login_design/constants.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: WelcomeScreen(),
    );
  }
}
