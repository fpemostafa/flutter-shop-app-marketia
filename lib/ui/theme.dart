
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marketia/constants.dart';

abstract class MyThemeData {
  static final lightMode = ThemeData(
    appBarTheme: const AppBarTheme(
      toolbarHeight: 78,
      color: Colors.transparent,
      centerTitle: false,
      elevation: 0,
      titleSpacing: 0,
      titleTextStyle: TextStyle(
        color: neutralDark,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      iconTheme: IconThemeData(
        size: 20,
        color: neutralGrey, //change your color here
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.zero),
      ),
    ),
    primarySwatch: Colors.blue,
    fontFamily: "Poppins",
    textTheme: const TextTheme(
        headline5: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          height: 1.5,
        ),
        headline4: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w700,
          color: neutralDark,
          height: 1.5,
        ),
        headline3: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.white,
          height: 1.5,
        ),
        headline2: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: neutralGrey,
          height: 1.5,
        ),
        bodyText1: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: neutralGrey,
        )),
  );
  static final darkMode = ThemeData(
      textTheme: const TextTheme(
    headline1: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
    headline2: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    headline3: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    headline5: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    headline6: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
  ));
}
