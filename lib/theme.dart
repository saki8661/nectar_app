import 'package:flutter/material.dart';

const MaterialColor primaryGreen = MaterialColor(
  0xFF54B278,
  <int, Color>{
    50: Color(0xFF54B278),
    100: Color(0xFF54B278),
    200: Color(0xFF54B278),
    300: Color(0xFF54B278),
    400: Color(0xFF54B278),
    500: Color(0xFF54B278),
    600: Color(0xFF54B278),
    700: Color(0xFF54B278),
    800: Color(0xFF54B278),
    900: Color(0xFF54B278),
  },
);

ThemeData theme() {
  return ThemeData(
    primarySwatch: primaryGreen,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue),
    ),
  );
}
