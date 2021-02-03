import 'package:flutter/material.dart';

Color appColor = Colors.blue[300];
Color accentBlueColor = Colors.blue[300];

getAppTheme() {
  return ThemeData(
    fontFamily: "SFUIText",
    primaryColor: appColor,
    accentColor: accentBlueColor,
    hintColor: appColor,
    textTheme: TextTheme(
      headline1: TextStyle(
          fontWeight: FontWeight.w600, fontSize: 25, color: Colors.black),
      headline2: TextStyle(
          fontWeight: FontWeight.w600, color: Colors.black, fontSize: 20),
      headline4: TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black, fontSize: 18),
      headline5: TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black, fontSize: 16),
      headline6: TextStyle(
          fontWeight: FontWeight.w500, color: Colors.black, fontSize: 14),
      subtitle1: TextStyle(color: Colors.grey),
    ),
  );
}
