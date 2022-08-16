import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyThem {
  static const Color lightPrimary = Color(0xFF5D9CEC);
  static const Color lightScafoldBackGround = Color(0xFFDFECDB);
  static const Color green = Color(0xFF61E757);
  static const Color red = Color(0xFFEC4B4B);
  static final lightThem = ThemeData(

    textTheme: TextTheme(
      subtitle2: TextStyle(
          fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        subtitle1: TextStyle(
            fontSize: 27, color: lightPrimary, fontWeight: FontWeight.bold)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.transparent,
        elevation: 0,
        unselectedIconTheme: IconThemeData(size: 36),
        selectedIconTheme: IconThemeData(size: 36)),
    primaryColor: lightPrimary,
    scaffoldBackgroundColor: lightScafoldBackGround,
  );
}
