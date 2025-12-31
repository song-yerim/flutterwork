import 'package:flutter/material.dart';

var theme = ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Color(0xfff3edf7),
            actionsIconTheme : IconThemeData(color: Colors.blueGrey),
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 25),
        ),

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.lightGreen,
            foregroundColor: Colors.pink, // 글자색 변경
            textStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold
            )
        )
    )


);