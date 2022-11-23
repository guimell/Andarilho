import 'package:andarilho/inicio.dart';
import 'package:andarilho/configuracao.dart';
import 'package:flutter/material.dart';

import 'historico.dart';

class AppConfig {
  static Size screenSize = const Size(0, 0);
  static bool smallScreen = false;

  static Brightness platformBrightness = Brightness.light;
  static ColorScheme lightColors = const ColorScheme(
    brightness: Brightness.light,
    primary: Color.fromARGB(255, 239, 122, 59),
    onPrimary: Colors.white,
    secondary: Color.fromARGB(249, 0, 221, 255),
    onSecondary: Colors.black,
    error: Color(0xffb00020),
    onError: Colors.white,
    background: Color.fromARGB(255, 0, 11, 38),
    onBackground: Color.fromARGB(255, 226, 243, 248),
    surface: Colors.white,
    onSurface: Colors.black,
  );
  static ColorScheme darkColors = const ColorScheme(
    brightness: Brightness.dark,
    primary: Color.fromARGB(255, 239, 122, 59),
    onPrimary: Colors.white,
    secondary: Color.fromARGB(255, 0, 221, 255),
    onSecondary: Colors.black,
    error: Color(0xffcf6679),
    onError: Colors.black,
    background: Color.fromARGB(255, 0, 11, 38),
    onBackground: Color.fromARGB(255, 226, 243, 248),
    surface: Color(0xff121212),
    onSurface: Colors.white,
  );
  static BottomNavigationBar navBar(context) {
    int indiceAtual = 0;

    final List<Widget> telas = [
      const Inicio(
        title: "inicio",
      ),
      const Historico(
        title: "Historico",
      ),
      const Configuracao(
        title: "Configuração",
      ),
    ];

    void onTabTapped(int index) {
      indiceAtual = index;
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => telas[indiceAtual]),
        (Route<dynamic> route) => false,
      );
    }

    return BottomNavigationBar(
      currentIndex: indiceAtual,
      onTap: onTabTapped,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: "Inicio",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "Historico",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Configuração",
        ),
      ],
    );
  }
}
