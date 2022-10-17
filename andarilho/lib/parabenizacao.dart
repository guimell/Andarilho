import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'config.dart';
import 'inicio.dart';

class Parabenizacao extends StatelessWidget {
  const Parabenizacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppConfig.screenSize = MediaQuery.of(context).size;
    AppConfig.smallScreen =
        AppConfig.screenSize.width < AppConfig.screenSize.height;
    AppConfig.platformBrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      body: Center(
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(alignment: Alignment.center, children: [
                  Container(
                    height: AppConfig.screenSize.width * 0.55,
                    width: AppConfig.screenSize.width * 0.55,
                    decoration: BoxDecoration(
                      color: AppConfig.lightColors.primary,
                      borderRadius: BorderRadius.circular(360),
                    ),
                  ),
                  Container(
                    height: AppConfig.screenSize.width * 0.5,
                    width: AppConfig.screenSize.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(360),
                    ),
                    child: Image.asset(
                      "assets/images/Logo cliente andarilho.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ]),
              ),
              RichText(
                text: TextSpan(
                  text: 'PARABÉNS',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: AppConfig.lightColors.primary),
                ),
              ),
              const Text(
                  "Cadastro concluido com sucesso, seu pedido esta em Análise"),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.8,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Inicio(
                                  title: "Inicio",
                                )),
                        (Route<dynamic> route) => false,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Voltar para inicio",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppConfig.lightColors.onPrimary),
                      ),
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
