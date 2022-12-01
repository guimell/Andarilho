import 'package:andarilho/config.dart';
import 'package:andarilho/parabenizacao.dart';
import 'package:flutter/material.dart';

class CadastroEndereco extends StatefulWidget {
  const CadastroEndereco({Key? key, title}) : super(key: key);

  @override
  State<CadastroEndereco> createState() => _CadastroEnderecoState();
}

class _CadastroEnderecoState extends State<CadastroEndereco> {
  @override
  Widget build(BuildContext context) {
    AppConfig.screenSize = MediaQuery.of(context).size;
    AppConfig.smallScreen =
        AppConfig.screenSize.width < AppConfig.screenSize.height;
    AppConfig.platformBrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: FittedBox(
            child: Column(
              children: [
                Container(
                  width: AppConfig.screenSize.width * 0.9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppConfig.lightColors.onPrimary),
                  child: Column(
                    children: [
                      Text(
                        "CADASTRE O ENDEREÇO DO LOCAL DO SEU SERVIÇO",
                        style: TextStyle(
                            color: AppConfig.lightColors.primary,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Caso seja seriço autonomo, cadastre endereço residencial",
                        style: TextStyle(color: AppConfig.lightColors.primary),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Text(
                              "Informe seu ESTADO",
                              style: TextStyle(
                                color: AppConfig.lightColors.onPrimary,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: SizedBox(
                                width: AppConfig.screenSize.width * 0.4,
                                child: TextFormField(
                                  style: TextStyle(
                                      color: AppConfig.lightColors.onPrimary),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              AppConfig.lightColors.onPrimary),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppConfig.lightColors.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    labelText: "Pesquisar...",
                                    labelStyle: TextStyle(
                                        color: AppConfig.lightColors.onPrimary),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Text(
                              "Informe sua CIDADE",
                              style: TextStyle(
                                color: AppConfig.lightColors.onPrimary,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: SizedBox(
                                width: AppConfig.screenSize.width * 0.4,
                                child: TextFormField(
                                  style: TextStyle(
                                      color: AppConfig.lightColors.onPrimary),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppConfig.lightColors.onPrimary,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppConfig.lightColors.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    labelText: 'Pesquisar...',
                                    labelStyle: TextStyle(
                                        color: AppConfig.lightColors.onPrimary),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          children: [
                            Text(
                              "Informe seu CEP",
                              style: TextStyle(
                                color: AppConfig.lightColors.onPrimary,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: SizedBox(
                                width: AppConfig.screenSize.width * 0.4,
                                child: TextFormField(
                                  style: TextStyle(
                                      color: AppConfig.lightColors.onPrimary),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              AppConfig.lightColors.onPrimary),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppConfig.lightColors.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    labelText: 'Pesquisar...',
                                    labelStyle: TextStyle(
                                        color: AppConfig.lightColors.onPrimary),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          children: [
                            Text(
                              "Informe sua RUA",
                              style: TextStyle(
                                color: AppConfig.lightColors.onPrimary,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: SizedBox(
                                width: AppConfig.screenSize.width * 0.4,
                                child: TextFormField(
                                  style: TextStyle(
                                      color: AppConfig.lightColors.onPrimary),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppConfig.lightColors.onPrimary,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: AppConfig.lightColors.primary,
                                      ),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    labelText: 'Pesquisar...',
                                    labelStyle: TextStyle(
                                        color: AppConfig.lightColors.onPrimary),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Text(
                        "Informe sua COMPLEMENTO",
                        style: TextStyle(
                          color: AppConfig.lightColors.onPrimary,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: SizedBox(
                          width: AppConfig.screenSize.width * 0.9,
                          child: TextFormField(
                            style: TextStyle(
                                color: AppConfig.lightColors.onPrimary),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: AppConfig.lightColors.onPrimary),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: AppConfig.lightColors.primary,
                                ),
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              labelText: 'Pesquisar...',
                              labelStyle: TextStyle(
                                  color: AppConfig.lightColors.onPrimary),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    width: AppConfig.screenSize.width * 0.8,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          primary: AppConfig.lightColors.primary),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "CLIQUE PARA ENVIAR COMPROVANTE",
                          style: TextStyle(
                            color: AppConfig.lightColors.onPrimary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    width: AppConfig.screenSize.width * 0.4,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          primary: AppConfig.lightColors.primary),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Parabenizacao()),
                          (Route<dynamic> route) => false,
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          "FINALIZAR",
                          style: TextStyle(
                            color: AppConfig.lightColors.onPrimary,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
