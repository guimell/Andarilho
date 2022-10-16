import 'package:andarilho/config.dart';
import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {
  final String texto;

  Perfil(this.texto);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(texto),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text(texto),
            )
          ],
        ),
      ),
    );
  }
}
