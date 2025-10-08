import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF144B5D);
  static const Color secondaryColor = Color(0xFF2B1603);
  static const Color accentColor = Color(0xFFB58B00);
  static const Color cardColor = Color(0xFF773E08);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'Arial',
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        fontFamily: 'Lavishly Yours',
        color: Colors.white,
        fontSize: 40,
      ),
      headlineMedium: TextStyle(
        fontFamily: 'Lavishly Yours',
        color: accentColor,
        fontSize: 30,
      ),
      bodyMedium: TextStyle(
        fontSize: 12,
        color: Colors.white,
      ),
    ),
  );
}
