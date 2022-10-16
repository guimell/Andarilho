// ignore_for_file: unnecessary_new
import 'package:andarilho/inicio.dart';
import 'package:andarilho/perfil.dart';
import 'package:andarilho/historico.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'config.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    Inicio("Inicio"),
    Perfil("Meu Perfil"),
    Historico("Historico"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_rounded),
            label: "Perfil",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Historico",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
