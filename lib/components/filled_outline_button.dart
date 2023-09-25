// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'constants.dart';


// ignore: camel_case_types
class fillOutlineButton extends StatelessWidget {
  fillOutlineButton({
    required Key key, 
    this.isFilled = true,
    required this.press,
    required this.text,
  }) : super(key: key);

  bool isFilled;
  VoidCallback press;
  String text;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
        side: BorderSide(color: Colors.white),
      ),
      elevation: isFilled ? 2 : 0,
      color: isFilled ? Colors.white : Colors.transparent,
      onPressed: press,
      child: Text(
        text,
        style: TextStyle(
          color: isFilled ? kContentColorLightTheme : Colors.white,
          fontSize: 12
        ),
      ),
      );
  }
}