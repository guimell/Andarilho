import 'package:andarilho/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key, title}) : super(key: key);

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
      ),
      bottomNavigationBar: AppConfig.navBar(context),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
