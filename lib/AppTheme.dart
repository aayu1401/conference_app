import 'package:flutter/material.dart';

class AppTheme {
  static const Color teal = Color.fromRGBO(49, 119, 115, 1),
      lavender = Color(0xFFE2D1F9),
      lightGrey = Color(0xFF242424);

  static const TextTheme _textTheme = TextTheme(
    bodyText1: TextStyle(
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontFamily: 'Poppins',
      fontSize: 12,
      color: Colors.white,
    ),
    headline1: TextStyle(
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontFamily: 'Poppins',
      fontSize: 16,
      color: Color(0xFFE2D1F9),
    ),
  );

  static final ThemeData _theme = ThemeData(
    fontFamily: 'Poppins',
    textTheme: _textTheme,
    scaffoldBackgroundColor: const Color(0xFFF6F1FD),
    primaryColor: Colors.teal[700],
  );

  static ThemeData get theme => _theme;
}
