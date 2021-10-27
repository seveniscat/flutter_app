import 'package:flutter/material.dart';

class MyTheme {

  static final ThemeData norTheme = ThemeData(
    brightness: Brightness.light,
    // primarySwatch: Colors.green,
    // primaryColorBrightness: ,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.green,
      primaryColorDark: Colors.black,
      accentColor: Colors.red,
      brightness: Brightness.light
    ),
    // colorScheme: ColorScheme(
    //   primary: Colors.red,
    //   primaryVariant: Colors.green,
    //   onPrimary: Colors.grey,

    //   secondary: Colors.green,
    //   secondaryVariant: Colors.lightGreen,
    //   onSecondary: Colors.grey,

    //   surface: Colors.purple,
    //   onSurface: Colors.purpleAccent,

    // ),

    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: 14),

    ),
  );
}
