import 'package:flutter/material.dart';

class AppConfig {
  static Size screenSize = const Size(0, 0);
  static bool smallScreen = false;

  static Brightness platformBrightness = Brightness.light;
  static ColorScheme lightColors = const ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromARGB(255, 18, 127, 190),
    onPrimary: Colors.white,
    secondary: Color(0xff03dac6),
    onSecondary: Colors.black,
    error: Color(0xffb00020),
    onError: Colors.white,
    background: Color.fromARGB(255, 237, 237, 237),
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
  );
  static ColorScheme darkColors = const ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 18, 127, 190),
    onPrimary: Colors.black,
    secondary: Color(0xff03dac6),
    onSecondary: Colors.black,
    error: Color(0xffcf6679),
    onError: Colors.black,
    background: Color(0xff121212),
    onBackground: Colors.white,
    surface: Color(0xff121212),
    onSurface: Colors.white,
  );
}
