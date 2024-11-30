import 'package:flutter/material.dart';

class myTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF0F7174),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
          color: Colors.white, fontSize: 40, fontWeight: FontWeight.w700),
      titleMedium: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),
    ),
  );
}
