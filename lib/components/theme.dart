// ignore_for_file: prefer_const_constructors

import 'package:chat_app/components/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: Colors.white,
    //appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorLightTheme),
    textTheme: GoogleFonts.interTextTheme(
      Theme.of(context).textTheme).apply(
        bodyColor: kContentColorLightTheme),
    colorScheme: ColorScheme.light(
      primary: kPrimaryColor,
      secondary: kSecondColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kContentColorDarkTheme,
      selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
      unselectedItemColor: kContentColorLightTheme.withOpacity(0.4),
      selectedIconTheme: IconThemeData(color: kPrimaryColor)
    )
  );
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
    primaryColor: kPrimaryColor,
    scaffoldBackgroundColor: kContentColorLightTheme,
    //appBarTheme: appBarTheme,
    iconTheme: IconThemeData(color: kContentColorDarkTheme),
    textTheme: GoogleFonts.interTextTheme(
      Theme.of(context).textTheme).apply(
        bodyColor: kContentColorDarkTheme),
    colorScheme: ColorScheme.dark(
      primary: kPrimaryColor,
      secondary: kSecondColor,
      error: kErrorColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kContentColorLightTheme,
      selectedItemColor: kContentColorDarkTheme,
      unselectedItemColor: kContentColorDarkTheme.withOpacity(0.4),
      selectedIconTheme: IconThemeData(color: kPrimaryColor)
    )
  );
}