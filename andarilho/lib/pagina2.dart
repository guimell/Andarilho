import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  final String texto;

  Pagina2(this.texto);

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
