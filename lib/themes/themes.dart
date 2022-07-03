import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app_delivery/devices/utilities/hex_color.dart';
import 'package:google_fonts/google_fonts.dart';

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
    textTheme: TextTheme(
      headlineLarge: const TextStyle(
        fontFamily: 'Inter',
        color: Colors.black,
        fontWeight: FontWeight.w700,
        fontSize: 35,
      ),
      titleLarge: const TextStyle(
        fontFamily: 'Inter',
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 20,
      ),
      labelLarge: GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        fontSize: 14,
        color: HexColor('#FFFFFF'),
      ),
      bodyLarge: const TextStyle(
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
