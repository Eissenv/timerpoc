import 'package:flutter/material.dart';

ThemeData buildTheme() {
  const bg = Color(0xFF171916);
  return ThemeData(
    scaffoldBackgroundColor: bg,
    appBarTheme: const AppBarTheme(
      backgroundColor: bg,
      elevation: 0,
      foregroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(fontSize: 60, color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
    ),
    useMaterial3: true,
  );
}
