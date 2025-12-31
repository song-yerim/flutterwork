import 'package:flutter/material.dart';

var theme = ThemeData(

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightGreen,
            foregroundColor: Colors.pink, // 글자색 변경
            textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            )
        )
    ),

    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.blueGrey, fontSize: 30),
      bodyLarge: TextStyle(color: Colors.lightGreen, )
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        backgroundColor: Colors.green,
        foregroundColor: Colors.yellow,
      )
    ),
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xfff3edf7),
    actionsIconTheme : IconThemeData(color: Colors.blueGrey),
    titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
  )

);