import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_design/Screens/Login/login_dart.dart';
import 'package:login_design/Screens/SignUp/components/background.dart';
import 'package:login_design/Screens/SignUp/components/or_divider.dart';
import 'package:login_design/Screens/SignUp/components/social_icon.dart';
import 'package:login_design/components/already_have_an_account.dart';
import 'package:login_design/components/rounded_button.dart';
import 'package:login_design/components/rounded_password_field.dart';
import 'package:login_design/components/text_field_container.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Background(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGN UP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            width: size.width * 0.5,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            buttonText: "SIGN UP",
            onClick: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(
            isLogin: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return new LoginScreen();
                }),
              );
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconSrc: "assets/icons/facebook.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/twitter.svg",
                press: () {},
              ),
              SocialIcon(
                iconSrc: "assets/icons/google-plus.svg",
                press: () {},
              ),
            ],
          )
        ],
      )),
    );
  }
}
