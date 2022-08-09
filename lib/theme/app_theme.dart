import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.red;

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    //Color primario
    primaryColor: Colors.amber,

    //AppBar Theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0
    ),

      //Color scaffold
      scaffoldBackgroundColor: Colors.white,

      //TextButtom theme
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: primary)
      ),
      //Floating Button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: primary,
          elevation: 5
      ),

      //Elevated buttom
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: primary,
              shape: const StadiumBorder(),
              elevation: 0

          )
      ),
      
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(
          color: Colors.blue
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10)
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.blue
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10)
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10)
          )
        )
      ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

    //Color primario
      primaryColor: primary,

      //AppBar Theme
      appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
      ),

      //Color scaffold
      scaffoldBackgroundColor: Colors.black,

      //TextButtom theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary)
  ),
      //Floating Button
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    elevation: 5
  ),

    //Elevated buttom
      elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0

      )
    )
  );
}