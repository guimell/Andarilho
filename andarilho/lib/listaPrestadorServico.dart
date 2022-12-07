import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';

import 'config.dart';

class ListaPrestadorServico extends StatefulWidget {
  const ListaPrestadorServico({super.key});

  @override
  State<ListaPrestadorServico> createState() => _ListaPrestadorServicoState();
}

class _ListaPrestadorServicoState extends State<ListaPrestadorServico> {
  var listaServicos = [];
  List<Widget> listaServicosWidgets = [];
  getServicos() async {
    // animação de load
    // showCupertinoModalPopup(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return SizedBox(
    //       height: AppConfig.screenSize.height,
    //       child: const Align(
    //           alignment: Alignment.center, child: CircularProgressIndicator()),
    //     );
    //   },
    // );
    //pegando do servidor
    final uri = Uri.parse('https://api-andarilho.onrender.com/service/all');
    final headers = {
      'Content-Type': 'application/json',
      "x-access-token": AppConfig.token
    };

    final encoding = Encoding.getByName('utf-8');

    Response response = await get(
      uri,
      headers: headers,
    );

    int statusCode = response.statusCode;
    String responseBody = response.body;

    log(
      statusCode.toString(),
    );
    log("quebra");

    listaServicos = jsonDecode(responseBody)["data"]["services"];
    log(listaServicos.toString());
    for (int i = 0; i < listaServicos.length; i++) {
      listaServicosWidgets.add(
        Container(
          height: AppConfig.screenSize.height * 0.2,
          width: AppConfig.screenSize.width * 0.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppConfig.lightColors.primary),
          child: ListView(
            children: [
              Text(
                listaServicos[i]["nome"],
                style: TextStyle(color: AppConfig.lightColors.onPrimary),
                textAlign: TextAlign.center,
              ),
              Text(
                listaServicos[i]["cnpj"],
                style: TextStyle(color: AppConfig.lightColors.onPrimary),
                textAlign: TextAlign.center,
              ),
              Text(
                listaServicos[i]["tipoServico"],
                style: TextStyle(color: AppConfig.lightColors.onPrimary),
                textAlign: TextAlign.center,
              ),
              Text(
                listaServicos[i]["categoria"],
                style: TextStyle(color: AppConfig.lightColors.onPrimary),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      );
    }
    setState(() {});

    // Navigator.of(context).pop();
  }

  @override
  void initState() {
    getServicos();
    super.initState();
  }

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
              children: listaServicosWidgets),
        ),
      ),
    );
  }
}
