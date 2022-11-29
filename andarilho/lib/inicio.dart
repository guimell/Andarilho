import 'dart:async';
import 'dart:developer';

import 'package:andarilho/avaliacoes.dart';
import 'package:andarilho/pagamentos.dart';
import 'package:andarilho/servicos.dart';
import 'package:andarilho/widgets.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'config.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key, title}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  final myMap = const MyMap();
  @override
  Widget build(BuildContext context) {
    AppConfig.screenSize = MediaQuery.of(context).size;
    AppConfig.smallScreen =
        AppConfig.screenSize.width < AppConfig.screenSize.height;
    AppConfig.platformBrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inicio"),
      ),
      bottomNavigationBar: AppConfig.navBar(context),
      body: Center(
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: AppConfig.screenSize.height * 0.2,
                    width: AppConfig.screenSize.width * 0.2,
                    child: Image.asset(
                      "assets/images/Logo cliente andarilho.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Text(
                    "Andarilho",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: AppConfig.lightColors.primary),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const Servicos(title: "Serviços"),
                              ),
                            );
                          },
                          child: const InicioContainer(
                            image: "assets/images/Aplicativo Andarilho (7).png",
                          )),
                      const Text("Serviços")
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Avaliacao(
                                title: "Avaliações",
                              ),
                            ),
                          );
                        },
                        child: const InicioContainer(
                            image: "assets/images/avaliacoes.png"),
                      ),
                      const Text("Avaliações")
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const Pagamentos(title: "Pagamentos"),
                            ),
                          );
                        },
                        child: const InicioContainer(
                            image: "assets/images/pagamentos.png"),
                      ),
                      const Text("Pagamentos")
                    ],
                  ),
                ],
              ),
              const MyMap()
            ],
          ),
        ),
      ),
    );
  }
}
