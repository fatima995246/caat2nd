import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme {
  static Color blueColor = Color(0xff3498DB);
  static Color yelloColor = Color(0xffF39C12);
  static Color whiteColor = Color(0xffFFFFFF);
  static Color blackColor = Color(0xff383838);
  static Color greyColor = Color(0xff707070);
  static Color redColor = Color(0xFFFE4A49);
  static Color blueTask = Color(0xffBAE2F3);
  static Color yelloTask = Color(0xffffff00);


  static ThemeData lightTheme = ThemeData(
      primaryColor: blueColor,
      scaffoldBackgroundColor: whiteColor,
      appBarTheme: AppBarTheme(
        backgroundColor: blueColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: yelloColor,
          unselectedItemColor: whiteColor,
          showUnselectedLabels: false,
          backgroundColor: Colors.transparent,
          elevation: 0),
      floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: blueColor),
      bottomSheetTheme: const BottomSheetThemeData(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ))),      textTheme: TextTheme(
    titleLarge:
        TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: whiteColor),
    titleMedium:
        TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: blackColor),
    titleSmall:
        TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: blackColor),
  ));
}
