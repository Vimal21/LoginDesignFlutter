import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_design/Screens/Login/login_dart.dart';
import 'package:login_design/Screens/SignUp/signup_screen.dart';
import 'package:login_design/Screens/components/background.dart';
import 'package:login_design/components/rounded_button.dart';
import 'package:login_design/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME TO EDU",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              buttonText: "LOGIN",
              buttonColor: kPrimaryColor,
              textColor: Colors.white,
              onClick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              buttonText: "SIGN UP",
              buttonColor: kPrimaryLightColor,
              textColor: Colors.black,
              onClick: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return SignUpScreen();
                  }),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
