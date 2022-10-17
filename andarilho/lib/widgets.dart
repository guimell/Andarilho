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
  const InicioContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.amber),
        height: AppConfig.screenSize.height * 0.13,
        width: AppConfig.screenSize.width * 0.25,
      ),
    );
  }
}
