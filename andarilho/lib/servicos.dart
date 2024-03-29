import 'package:andarilho/cadastroServicos.dart';
import 'package:andarilho/listaPrestadorServico.dart';
import 'package:flutter/material.dart';
import 'config.dart';

class Servicos extends StatefulWidget {
  const Servicos({Key? key, title}) : super(key: key);

  @override
  State<Servicos> createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    AppConfig.screenSize = MediaQuery.of(context).size;
    AppConfig.smallScreen =
        AppConfig.screenSize.width < AppConfig.screenSize.height;
    AppConfig.platformBrightness = MediaQuery.of(context).platformBrightness;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Serviços"),
      ),
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: AppConfig.navBar(context),
      body: Center(
        child: FittedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(children: [
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12),
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
                        child: FittedBox(
                          fit: BoxFit.fitWidth,
                          child: RichText(
                            text: TextSpan(
                              text: 'SERVIÇOS',
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
                      ),
                      Text(
                        "INDIQUE SUA REGIÃO",
                        style: TextStyle(
                            color: AppConfig.lightColors.onPrimary,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "Iremos buscar os serviços mais proximos de você !",
                style: TextStyle(
                    color: AppConfig.lightColors.onPrimary, fontSize: 15),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.7,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        backgroundColor: AppConfig.lightColors.primary),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ListaPrestadorServico(),
                        ),
                      );
                    },
                    child: const Text("PRESTADORES DE SERVIÇO"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      backgroundColor: AppConfig.lightColors.primary),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const CadastroServicos(title: "Cadastro Serviços"),
                      ),
                    );
                  },
                  child: const Text("QUERO ME TORNAR PARCEIRO"),
                ),
              ),
              Text(
                "Cadastre seu serviço,seu negocio ou sua empresa.\n",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Text(
                "Ganhe visibilidade e encontre mais clientes\n",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Text(
                "Ganhe mais com mais praticidade\n",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Text(
                "Tenha segurança contra golpes.\n",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
