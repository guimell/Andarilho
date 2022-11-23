import 'package:andarilho/cadastro.dart';
import 'package:andarilho/centralDeAjuda.dart';
import 'package:andarilho/chats.dart';
import 'package:andarilho/config.dart';
import 'package:andarilho/configPerfil.dart';
import 'package:andarilho/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Configuracao extends StatefulWidget {
  const Configuracao({Key? key, title}) : super(key: key);

  @override
  State<Configuracao> createState() => _ConfiguracaoState();
}

class _ConfiguracaoState extends State<Configuracao> {
  var nome = Cadastro.cadastroNomeCompleto;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Configuração"),
      ),
      bottomNavigationBar: AppConfig.navBar(context),
      body: Center(
        child: FittedBox(
          child: Column(
            children: [
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
                      child: Text(
                        nome.text,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              const ButtonPerfil(
                text: "EDITAR PERFIL",
                classe: ConfigPerfil(),
              ),
              const ButtonPerfil(
                text: "CHATS",
                classe: Chats(),
              ),
              const ButtonPerfil(
                text: "CENTRAL DE AJUDA",
                classe: CentralDeAjuda(),
              ),
              const ButtonPerfil(
                text: "STATUS DE SERVIÇOS",
                classe: ConfigPerfil(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
