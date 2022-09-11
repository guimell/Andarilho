// ignore_for_file: unnecessary_new
import 'package:andarilho/pagina1.dart';
import 'package:andarilho/pagina2.dart';
import 'package:andarilho/pagina3.dart';
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
    Pagina1("Minha conta"),
    Pagina2("Meus pedidos"),
    Pagina3("Favoritos")
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
            label: "Minha conta",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "Meus pedidos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "favoritos",
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
