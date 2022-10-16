import 'package:andarilho/servicos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'config.dart';

class Inicio extends StatelessWidget {
  final String texto;

  Inicio(this.texto);

  @override
  Widget build(BuildContext context) {
    AppConfig.screenSize = MediaQuery.of(context).size;
    AppConfig.smallScreen =
        AppConfig.screenSize.width < AppConfig.screenSize.height;
    AppConfig.platformBrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        title: Text(texto),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber),
                        height: AppConfig.screenSize.height * 0.13,
                        width: AppConfig.screenSize.width * 0.25,
                      ),
                    ),
                    Text("Serviços")
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber),
                        height: AppConfig.screenSize.height * 0.13,
                        width: AppConfig.screenSize.width * 0.25,
                      ),
                    ),
                    Text("Avaliações")
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber),
                        height: AppConfig.screenSize.height * 0.13,
                        width: AppConfig.screenSize.width * 0.25,
                      ),
                    ),
                    Text("Pagamentos")
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: Stack(children: [
                Container(
                  height: AppConfig.screenSize.height * 0.4,
                  width: AppConfig.screenSize.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.amber),
                ),
                Align(
                  alignment: Alignment.center,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Pesquisar...',
                    ),
                  ),
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
