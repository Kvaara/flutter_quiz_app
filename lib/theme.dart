import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme(BuildContext context) {
    final theme = Theme.of(context);
    return ThemeData(
      fontFamily: GoogleFonts.baloo2().fontFamily,
      bottomAppBarTheme: const BottomAppBarTheme(
        color: Colors.black87,
      ),
      brightness: Brightness.dark,
      textTheme: const TextTheme(
        bodyText1: TextStyle(fontSize: 18),
        bodyText2: TextStyle(fontSize: 16),
        button: TextStyle(
          fontSize: 18,
          letterSpacing: 1,
          fontWeight: FontWeight.bold,
        ),
        headline1: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        subtitle1: TextStyle(
          color: Colors.grey,
        ),
      ),
      buttonTheme: const ButtonThemeData(),
    );
  }
}
