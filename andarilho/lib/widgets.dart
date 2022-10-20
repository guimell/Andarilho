import 'package:andarilho/config.dart';
import 'package:flutter/material.dart';

import 'avaliacoes.dart';

class AvaliaContainer extends StatelessWidget {
  const AvaliaContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: [
          Container(
            width: AppConfig.screenSize.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppConfig.darkColors.onPrimary,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppConfig.darkColors.primary),
                      child: const Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                  ),
                  const Icon(
                    Icons.chat_rounded,
                    color: Colors.blue,
                    size: 40,
                  ),
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  const Icon(
                    Icons.star_rate_rounded,
                    color: Colors.yellow,
                    size: 40,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PagamentoContainer extends StatelessWidget {
  const PagamentoContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Stack(
        children: [
          Container(
            width: AppConfig.screenSize.width * 0.7,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppConfig.darkColors.onPrimary,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppConfig.darkColors.primary),
                      child: const Icon(
                        Icons.person,
                        size: 40,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "QUENTINHAS MARIA",
                        style: TextStyle(color: AppConfig.darkColors.primary),
                        textAlign: TextAlign.center,
                      ),
                      Text("PAGAMENTO CONCLUIDO")
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class InicioContainer extends StatelessWidget {
  final String image;
  const InicioContainer({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppConfig.darkColors.onPrimary),
        height: AppConfig.screenSize.height * 0.13,
        width: AppConfig.screenSize.width * 0.25,
        child: Image.asset(image),
      ),
    );
  }
}

class ButtonPerfil extends StatelessWidget {
  final text;
  const ButtonPerfil({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: AppConfig.screenSize.width * 0.5,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              primary: AppConfig.lightColors.primary),
          onPressed: () {},
          child: Text(text),
        ),
      ),
    );
  }
}
