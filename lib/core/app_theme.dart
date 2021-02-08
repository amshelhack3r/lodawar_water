import 'package:flutter/material.dart';
import 'package:lodwar_water/util/colors.dart';

Color appColor = HexColor('#8F92D6');
Color accentBlueColor = HexColor('#A2A7D3');

getAppTheme() {
  return ThemeData(
    fontFamily: "SFUIText",
    primaryColor: appColor,
    accentColor: accentBlueColor,
    primaryColorDark: HexColor('#334352'),
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
