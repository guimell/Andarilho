import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'config.dart';

class ListaPrestadorServico extends StatefulWidget {
  const ListaPrestadorServico({super.key});

  @override
  State<ListaPrestadorServico> createState() => _ListaPrestadorServicoState();
}

class _ListaPrestadorServicoState extends State<ListaPrestadorServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: TextFormField(
            decoration: const InputDecoration(
              label: Text("Pesquisar..."),
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: AppConfig.navBar(context),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: AppConfig.screenSize.height * 0.2,
                width: AppConfig.screenSize.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.amber),
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Prestador de Serviço"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
