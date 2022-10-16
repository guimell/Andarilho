import 'package:andarilho/widgets.dart';
import 'package:flutter/material.dart';

import 'config.dart';

class Pagamentos extends StatefulWidget {
  const Pagamentos({Key? key, title}) : super(key: key);

  @override
  State<Pagamentos> createState() => _PagamentosState();
}

class _PagamentosState extends State<Pagamentos> {
  @override
  Widget build(BuildContext context) {
    AppConfig.screenSize = MediaQuery.of(context).size;
    AppConfig.smallScreen =
        AppConfig.screenSize.width < AppConfig.screenSize.height;
    AppConfig.platformBrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pagamentos"),
      ),
      bottomNavigationBar: AppConfig.navBar(context),
      body: Center(
        child: Column(
          children: [
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
                      padding: const EdgeInsets.all(8.0),
                      child: RichText(
                        text: TextSpan(
                          text: 'Pagamentos',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: AppConfig.lightColors.primary),
                        ),
                      ),
                    ),
                    Text(
                      "Consultar aqui os pagametnos",
                      style: TextStyle(
                          color: AppConfig.darkColors.onSecondary,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              "Veja os pagamentos e andamentos de suas contatrações",
              textAlign: TextAlign.center,
            ),
            AvaliaContainer()
          ],
        ),
      ),
    );
  }
}
