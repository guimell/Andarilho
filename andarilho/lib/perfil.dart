import 'package:andarilho/config.dart';
import 'package:andarilho/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Perfil extends StatefulWidget {
  const Perfil({Key? key, title}) : super(key: key);

  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
      ),
      bottomNavigationBar: AppConfig.navBar(context),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 100, 0),
                  child: Text("Andarilha"),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppConfig.darkColors.primary,
                          shape: BoxShape.circle),
                      child: const Icon(
                        Icons.person,
                        size: 70,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: AppConfig.screenSize.width * 0.5,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      "Maria Roberta",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            const ButtonPerfil(
              text: "CONFIGURAÇÃO DE PERFIL",
            ),
            const ButtonPerfil(
              text: "CHATS EM ABERTO",
            ),
            const ButtonPerfil(
              text: "CENTRAL DE AJUDA",
            ),
            const ButtonPerfil(
              text: "MINHAS AVALIAÇÕES",
            ),
            const ButtonPerfil(
              text: "STATUS DE SERVIÇOS",
            ),
          ],
        ),
      ),
    );
  }
}
