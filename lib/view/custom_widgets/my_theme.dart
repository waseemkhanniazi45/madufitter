import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        canvasColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.white,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Colors.white,
          secondary: Colors.black87,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.redAccent,
          background: Colors.white,
          onBackground: Colors.white,
          surface: Colors.white,
          onSurface: Colors.white,
        ),
      );
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        canvasColor: Colors.black,
        fontFamily: GoogleFonts.poppins().fontFamily,
        cardColor: Colors.black,
        colorScheme: ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.white,
          onPrimary: Colors.white,
          secondary: Colors.white,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.redAccent,
          background: Colors.cyan,
          onBackground: Colors.cyan,
          surface: Colors.cyan.shade400,
          onSurface: Colors.cyanAccent,

        )
      );
}
