// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';

import 'config.dart';

class Screen2 extends StatefulWidget {
  Screen2({Key? key, required this.title}) : super(key: key);

  late double growHeigh = 0;
  late double growWidth = 0;
  late double growHeigh2 = 0;
  late double growWidth2 = 0;
  final String title;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    AppConfig.screenSize = MediaQuery.of(context).size;
    AppConfig.smallScreen =
        AppConfig.screenSize.width < AppConfig.screenSize.height;
    AppConfig.platformBrightness = MediaQuery.of(context).platformBrightness;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      backgroundColor: AppConfig.lightColors.background,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Stack(children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: AppConfig.screenSize.width * 0.3,
                      width: AppConfig.screenSize.width * 0.3,
                      decoration: BoxDecoration(
                        color: AppConfig.lightColors.onPrimary,
                        borderRadius: BorderRadius.circular(360),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    height: AppConfig.screenSize.width * 0.3,
                    width: AppConfig.screenSize.width * 0.3,
                    "assets/images/LOGO DO ADMINSTRADOR.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Container(
                    width: AppConfig.screenSize.width * 0.7,
                    decoration: BoxDecoration(
                      color: AppConfig.lightColors.onPrimary,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: RichText(
                            text: TextSpan(
                              text: 'CADASTRO',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: AppConfig.lightColors.primary),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'ANDARILHO',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: AppConfig.lightColors.background,
                                      fontStyle: FontStyle.italic),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            "Escolha sua opção de cadastro",
                            style: TextStyle(
                                color: AppConfig.lightColors.onSecondary,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: AppConfig.screenSize.width * 0.1,
                  width: AppConfig.screenSize.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: AppConfig.lightColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'QUERO ENCONTRAR',
                      style: TextStyle(
                          color: AppConfig.lightColors.onPrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(
                    () {
                      if (widget.growHeigh == 0) {
                        widget.growHeigh = AppConfig.screenSize.height * 0.1;
                        widget.growWidth = AppConfig.screenSize.width * 0.8;
                      } else {
                        widget.growHeigh = 0;
                      }
                    },
                  );
                },
                child: Text(
                  "Saiba mais...",
                  style: TextStyle(color: AppConfig.lightColors.onPrimary),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: widget.growHeigh,
                width: widget.growWidth,
                child: Text(
                  "Busque por serviços autonomos, artesanais ou microempresas.\n"
                  "Encontre os serviços que deseja.Mais perto de você.\n"
                  "Encontre os melhores preços e avaliações\n"
                  "Tenha segurança garantida.",
                  style: TextStyle(color: AppConfig.lightColors.onPrimary),
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: AppConfig.screenSize.width * 0.1,
                  width: AppConfig.screenSize.width * 0.8,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: AppConfig.lightColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'QUERO ME TORNAR PARCEIRO',
                      style: TextStyle(
                          color: AppConfig.lightColors.onPrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(
                    () {
                      if (widget.growHeigh2 == 0) {
                        widget.growHeigh2 = AppConfig.screenSize.height * 0.1;
                        widget.growWidth2 = AppConfig.screenSize.width * 0.8;
                      } else {
                        widget.growHeigh2 = 0;
                      }
                    },
                  );
                },
                child: Text(
                  "Saiba mais...",
                  style: TextStyle(color: AppConfig.lightColors.onPrimary),
                ),
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: widget.growHeigh2,
                width: widget.growWidth2,
                child: Text(
                  "Cadastre seu serviço. seu negoócio ou sua empresa.\n"
                  "Ganhe visibilidade e econtre mais clientes.\n"
                  "Tenha segurança contra golpes\n"
                  "Ganhe mais com mais praticidade.",
                  style: TextStyle(color: AppConfig.lightColors.onPrimary),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: AppConfig.screenSize.height * 0.2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: AppConfig.screenSize.width * 0.1,
                  width: AppConfig.screenSize.width * 0.5,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: AppConfig.lightColors.onPrimary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'CONHEÇA O ANDARILHO',
                      style: TextStyle(
                          color: AppConfig.lightColors.onSecondary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: AppConfig.screenSize.width * 0.07,
                  width: AppConfig.screenSize.width * 0.35,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      // ignore: deprecated_member_use
                      primary: AppConfig.lightColors.secondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'FAQ',
                      style: TextStyle(
                          color: AppConfig.lightColors.onPrimary,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
