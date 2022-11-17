import 'package:andarilho/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'config.dart';

class ConfigPerfil extends StatefulWidget {
  const ConfigPerfil({super.key});

  @override
  State<ConfigPerfil> createState() => _ConfigPerfilState();
}

class _ConfigPerfilState extends State<ConfigPerfil> {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Stack(children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppConfig.darkColors.primary,
                            shape: BoxShape.circle),
                        child: const Icon(
                          Icons.person,
                          size: 70,
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 8,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration:
                              const BoxDecoration(shape: BoxShape.circle),
                          child: Icon(
                            Icons.flip_camera_ios,
                            color: AppConfig.darkColors.secondary,
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
                const Expanded(
                  child: ConfigPerfilForms(
                    text: "Nome:",
                  ),
                ),
              ],
            ),
            const ConfigPerfilForms(
              text: "Numero de telefone: ",
            ),
            const ConfigPerfilForms(
              text: "E-mail: ",
            ),
            const ConfigPerfilForms(
              text: "Senha: ",
            ),
            const ConfigPerfilForms(
              text: "Endereço: ",
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: (() {}),
                    child: Text("Salvar"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: (() {}),
                    child: Text("Cancelar"),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
