import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Servicos extends StatefulWidget {
  const Servicos({Key? key, title}) : super(key: key);

  @override
  State<Servicos> createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços"),
      ),
      body: Center(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
