import 'package:andarilho/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'config.dart';

class CentralDeAjuda extends StatefulWidget {
  const CentralDeAjuda({super.key});

  @override
  State<CentralDeAjuda> createState() => _CentralDeAjudaState();
}

class _CentralDeAjudaState extends State<CentralDeAjuda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
      ),
      bottomNavigationBar: AppConfig.navBar(context),
      body: Center(
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "data",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
