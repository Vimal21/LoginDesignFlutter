import 'package:flutter/material.dart';
import 'package:login_design/constants.dart';

class RoundedButton extends StatelessWidget {
  final String buttonText;
  final Function onClick;
  final Color buttonColor, textColor;

  const RoundedButton({
    Key key,
    this.buttonText,
    this.onClick,
    this.buttonColor = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            color: buttonColor,
            onPressed: onClick,
            child: Text(
              buttonText,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}
