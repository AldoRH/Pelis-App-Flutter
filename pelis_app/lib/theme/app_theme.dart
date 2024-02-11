

import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //Color primario
        primaryColor: Colors.indigo,
        //AppBar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold ),
          iconTheme: IconThemeData(color: Colors.white, size: 30)
        ),
      );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
        //Color primario
        primaryColor: Colors.indigo,
        //AppBar theme
        appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold ),
          iconTheme: IconThemeData(color: Colors.white, size: 30)
        ),

        scaffoldBackgroundColor: Colors.black

);

}