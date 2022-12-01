import 'package:andarilho/cadastroEndereco.dart';
import 'package:andarilho/config.dart';
import 'package:flutter/material.dart';

class CadastroServicos extends StatefulWidget {
  const CadastroServicos({Key? key, title}) : super(key: key);

  @override
  State<CadastroServicos> createState() => _CadastroServicosState();
}

class _CadastroServicosState extends State<CadastroServicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro Serviços"),
      ),
      body: Center(
        child: FittedBox(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text(
                  "Informe o nome do seu SERVIÇO",
                  style: TextStyle(
                    color: AppConfig.lightColors.onPrimary,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.9,
                  child: TextFormField(
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppConfig.lightColors.onPrimary),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppConfig.lightColors.primary,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Pesquisar...',
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              Text(
                "Informe seu CNPJ ou CPF",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.9,
                  child: TextFormField(
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
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
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              Text(
                "Informe o TIPO DO SEU SERVIÇO",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.9,
                  child: TextFormField(
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: AppConfig.lightColors.onPrimary),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: AppConfig.lightColors.primary,
                        ),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Pesquisar...',
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              Text(
                "Informe a CATEGORIA DO SEU SERVIÇO",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                  width: AppConfig.screenSize.width * 0.9,
                  child: TextFormField(
                    style: TextStyle(color: AppConfig.lightColors.onPrimary),
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
                      labelStyle:
                          TextStyle(color: AppConfig.lightColors.onPrimary),
                    ),
                  ),
                ),
              ),
              Text(
                "Envie foto do seu documento de identidade",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      primary: AppConfig.lightColors.primary),
                  onPressed: () {},
                  child: Text(
                    "CLIQUE PARA ENVIAR FOTO DA FRENTE",
                    style: TextStyle(
                      color: AppConfig.lightColors.onPrimary,
                    ),
                  ),
                ),
              ),
              Text(
                "Envie foto do seu documento de identidade",
                style: TextStyle(
                  color: AppConfig.lightColors.onPrimary,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      primary: AppConfig.lightColors.primary),
                  onPressed: () {},
                  child: Text(
                    "CLIQUE PARA ENVIAR FOTO DO VERSO",
                    style: TextStyle(
                      color: AppConfig.lightColors.onPrimary,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      primary: AppConfig.lightColors.primary),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const CadastroEndereco(title: "Cadastro"),
                      ),
                    );
                  },
                  child: const Text("Continuar >>"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
