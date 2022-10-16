import 'package:andarilho/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Historico extends StatefulWidget {
  const Historico({Key? key, title}) : super(key: key);

  @override
  State<Historico> createState() => _HistoricoState();
}

class _HistoricoState extends State<Historico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Historico"),
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
