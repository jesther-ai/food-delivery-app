import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FoodAppTheme {
  static final darkTheme = ThemeData(
    textTheme: lightTheme.textTheme.copyWith(
      bodyLarge: const TextStyle(
        fontFamily: 'Inter',
        color: Colors.white,
        fontWeight: FontWeight.w300,
        fontSize: 20,
      ),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
      ),
    ),
    scaffoldBackgroundColor: Colors.black,
    backgroundColor: Colors.black,
  );
  //-------------------------------------------------
  //-------------------------------------------------
  //-------------------------------------------------
  static final lightTheme = ThemeData(
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'Inter',
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 35,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Inter',
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Inter',
        color: Colors.white,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Inter',
        color: Colors.black,
        fontWeight: FontWeight.w300,
        fontSize: 20,
      ),
    ),
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
    ),
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Colors.white,
  );
}
