import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      fontFamily: GoogleFonts.poppins().fontFamily,
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.black87,
      ),
      brightness: Brightness.dark,
      textTheme: TextTheme(
        bodyText1: const TextStyle(fontSize: 20),
        bodyText2: const TextStyle(fontSize: 18),
        button: const TextStyle(
          fontSize: 18,
          letterSpacing: 1,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        headline1: TextStyle(
          fontSize: 24,
          fontFamily: GoogleFonts.comfortaa().fontFamily,
          height: 1.6,
        ),
        headline2: const TextStyle(
          fontSize: 22,
        ),
        subtitle1: const TextStyle(
          fontSize: 18,
          color: Colors.grey,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(
            Colors.white,
          ),
          // shape: MaterialStateProperty.all(
          //   RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(999),
          //   ),
          // ),
        ),
      ),
      buttonTheme: const ButtonThemeData(),
    );
  }
}
